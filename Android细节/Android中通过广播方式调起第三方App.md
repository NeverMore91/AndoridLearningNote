Android中通过广播方式调起第三方App
Posted on 2013-12-13 13:41 喜糖 阅读(4540) 评论(1) 编辑 收藏
今天紧急的跟进一个百度视频App无法调起百度贴吧App的问题，当然，这个是只发现是在4.x的android系统下发生，在2.x版本下，一切正常，（其实是3.1及以上的版本都有问题）具体场景为：

1、贴吧App安装成功但未启动，试图从视频App通过sendBroadcast方式调起：失败

2、贴吧App的进程被用户强制杀掉，试图从视频App通过sendBroadcast方式调起：失败

3、贴吧App处于启动状态，试图从视频App通过sendBroadcast方式调起：成功

看了一下视频调起贴吧的代码逻辑，是这样的：

1
2
3
4
5
Intent intent = new Intent("com.baidu.tieba.action.INVOKE");
intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK); 
intent.putExtra("type", "frs");
intent.putExtra("fname", "李毅");
activity.sendBroadcast(intent);
 

于是直接定位问题：必定是高版本的android系统，在发送广播的适合，无法调起未启动（处于停止状态）的的App，打开官方文档查了一下： http://developer.android.com/about/versions/android-3.1.html#launchcontrols 写的很明白，大概意思是：

从Android 3.1开始，给Intent定义了两个新的Flag，分别为FLAG_INCLUDE_STOPPED_PACKAGES和FLAG_EXCLUDE_STOPPED_PACKAGES，用来控制Intent是否要对处于停止状态的App起作用，顾名思义：

FLAG_INCLUDE_STOPPED_PACKAGES：表示包含未启动的App

FLAG_EXCLUDE_STOPPED_PACKAGES：表示不包含未启动的App

值得注意的是，Android 3.1开始，系统向所有Intent的广播添加了FLAG_EXCLUDE_STOPPED_PACKAGES标志。这样做是为了防止广播无意或不必要地开启未启动App的后台服务。如果要强制调起未启动的App，后台服务或应用程序可以通过向广播Intent添加FLAG_INCLUDE_STOPPED_PACKAGES标志来唤醒，示例代码：

1
2
3
4
5
6
Intent intent = new Intent("com.baidu.tieba.action.INVOKE");  
intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK); 
intent.addFlags(Intent. FLAG_INCLUDE_STOPPED_PACKAGES);
intent.putExtra("type", "frs");
intent.putExtra("fname", "李毅");
activity.sendBroadcast(intent);
如果你的项目依赖的Android SDK是3.1以下版本，那么直接像上面这样写是会出问题的，你会发现Intent.FLAG_INCLUDE_STOPPED_PACKAGES无法被正确识别，所以相对安全的办法是，直接把value写进来：

1
2
3
4
5
6
7
8
9
Intent intent = new Intent("com.baidu.tieba.action.INVOKE");  
intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK); 
// 3.1以后的版本直接设置Intent.FLAG_INCLUDE_STOPPED_PACKAGES的value：32
if (android.os.Build.VERSION.SDK_INT >= 12) {
    intent.setFlags(32);
}
intent.putExtra("type", "frs");
intent.putExtra("fname", "李毅");
activity.sendBroadcast(intent);
以上，Mark一下！






Intent Flag介绍 intent.addFlags（）

intent.addFlags(Intent.FLAG_ACTIVITY_NO_ANIMATION);
 
 
FLAG_ACTIVITY_BROUGHT_TO_FRONT     
　　这个标志一般不是由程序代码设置的，如在launchMode中设置singleTask模式时系统帮你设定。
 
FLAG_ACTIVITY_CLEAR_TOP    
　　如果设置，并且这个Activity已经在当前的Task中运行，因此，不再是重新启动一个这个Activity的实例，而是在这个Activity上方的所有Activity都将关闭，然后这个Intent会作为一个新的Intent投递到老的Activity（现在位于顶端）中。      例如，假设一个Task中包含这些Activity：A，B，C，D。如果D调用了startActivity()，并且包含一个指向Activity B的Intent，那么，C和D都将结束，然后B接收到这个Intent，因此，目前stack的状况是：A，B。      上例中正在运行的Activity B既可以在onNewIntent()中接收到这个新的Intent，也可以把自己关闭然后重新启动来接收这个Intent。如果它的启动模式声明为“multiple”(默认值)，并且你没有在这个Intent中设置FLAG_ACTIVITY_SINGLE_TOP标志，那么它将关闭然后重新创建；对于其它的启动模式，或者在这个Intent中设置FLAG_ACTIVITY_SINGLE_TOP标志，都将把这个Intent投递到当前这个实例的onNewIntent()中。      这个启动模式还可以与FLAG_ACTIVITY_NEW_TASK结合起来使用：用于启动一个Task中的根Activity，它会把那个Task中任何运行的实例带入前台，然后清除它直到根Activity。这非常有用，例如，当从Notification Manager处启动一个Activity。
 
FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET    
　　如果设置，这将在Task的Activity stack中设置一个还原点，当Task恢复时，需要清理Activity。也就是说，下一次Task带着FLAG_ACTIVITY_RESET_TASK_IF_NEEDED标记进入前台时（典型的操作是用户在主画面重启它），这个Activity和它之上的都将关闭，以至于用户不能再返回到它们，但是可以回到之前的Activity。      这在你的程序有分割点的时候很有用。例如，一个e-mail应用程序可能有一个操作是查看一个附件，需要启动图片浏览Activity来显示。这个Activity应该作为e-mail应用程序Task的一部分，因为这是用户在这个Task中触发的操作。然而，当用户离开这个Task，然后从主画面选择e-mail app，我们可能希望回到查看的会话中，但不是查看图片附件，因为这让人困惑。通过在启动图片浏览时设定这个标志，浏览及其它启动的Activity在下次用户返回到mail程序时都将全部清除。
 
FLAG_ACTIVITY_EXCLUDE_FROM_RECENTS    
　　如果设置，新的Activity不会在最近启动的Activity的列表中保存。
 
FLAG_ACTIVITY_FORWARD_RESULT     
　　如果设置，并且这个Intent用于从一个存在的Activity启动一个新的Activity，那么，这个作为答复目标的Activity将会传到这个新的Activity中。这种方式下，新的Activity可以调用setResult(int)，并且这个结果值将发送给那个作为答复目标的Activity。
 
FLAG_ACTIVITY_LAUNCHED_FROM_HISTORY     
　　这个标志一般不由应用程序代码设置，如果这个Activity是从历史记录里启动的（常按HOME键），那么，系统会帮你设定。
 
FLAG_ACTIVITY_MULTIPLE_TASK     
　　不要使用这个标志，除非你自己实现了应用程序启动器。与FLAG_ACTIVITY_NEW_TASK结合起来使用，可以禁用把已存的Task送入前台的行为。当设置时，新的Task总是会启动来处理Intent，而不管这是是否已经有一个Task可以处理相同的事情。      由于默认的系统不包含图形Task管理功能，因此，你不应该使用这个标志，除非你提供给用户一种方式可以返回到已经启动的Task。      如果FLAG_ACTIVITY_NEW_TASK标志没有设置，这个标志被忽略。
 
FLAG_ACTIVITY_NEW_TASK     
　　 如果设置，这个Activity会成为历史stack中一个新Task的开始。一个Task（从启动它的Activity到下一个Task中的Activity）定义了用户可以迁移的Activity原子组。Task可以移动到前台和后台；在某个特定Task中的所有Activity总是保持相同的次序。      这个标志一般用于呈现“启动”类型的行为：它们提供用户一系列可以单独完成的事情，与启动它们的Activity完全无关。      使用这个标志，如果正在启动的Activity的Task已经在运行的话，那么，新的Activity将不会启动；代替的，当前Task会简单的移入前台。参考FLAG_ACTIVITY_MULTIPLE_TASK标志，可以禁用这一行为。      这个标志不能用于调用方对已经启动的Activity请求结果。
 
FLAG_ACTIVITY_NO_ANIMATION    
　　如果在Intent中设置，并传递给Context.startActivity()的话，这个标志将阻止系统进入下一个Activity时应用Acitivity迁移动画。这并不意味着动画将永不运行——如果另一个Activity在启动显示之前，没有指定这个标志，那么，动画将被应用。这个标志可以很好的用于执行一连串的操作，而动画被看作是更高一级的事件的驱动。
 
FLAG_ACTIVITY_NO_HISTORY     
　　如果设置，新的Activity将不再历史stack中保留。用户一离开它，这个Activity就关闭了。这也可以通过设置noHistory特性。
 
FLAG_ACTIVITY_NO_USER_ACTION     
　　如果设置，作为新启动的Activity进入前台时，这个标志将在Activity暂停之前阻止从最前方的Activity回调的onUserLeaveHint()。      典型的，一个Activity可以依赖这个回调指明显式的用户动作引起的Activity移出后台。这个回调在Activity的生命周期中标记一个合适的点，并关闭一些Notification。      如果一个Activity通过非用户驱动的事件，如来电或闹钟，启动的，这个标志也应该传递给Context.startActivity，保证暂停的Activity不认为用户已经知晓其Notification。
 
FLAG_ACTIVITY_PREVIOUS_IS_TOP     
　　 If set and this intent is being used to launch a new activity from an existing one, the current activity will not be counted as the top activity for deciding whether the new intent should be delivered to the top instead of starting a new one. The previous activity will be used as the top, with the assumption being that the current activity will finish itself immediately.
 
FLAG_ACTIVITY_REORDER_TO_FRONT    
　　如果在Intent中设置，并传递给Context.startActivity()，这个标志将引发已经运行的Activity移动到历史stack的顶端。      例如，假设一个Task由四个Activity组成：A,B,C,D。如果D调用startActivity()来启动Activity B，那么，B会移动到历史stack的顶端，现在的次序变成A,C,D,B。如果FLAG_ACTIVITY_CLEAR_TOP标志也设置的话，那么这个标志将被忽略。
 
FLAG_ACTIVITY_RESET_TASK_IF_NEEDED
　　If set, and this activity is either being started in a new task or bringing to the top an existing task, then it will be launched as the front door of the task. This will result in the application of any affinities needed to have that task in the proper state (either moving activities to or from it), or simply resetting that task to its initial state if needed.
 
FLAG_ACTIVITY_SINGLE_TOP     
　　如果设置，当这个Activity位于历史stack的顶端运行时，不再启动一个新的。