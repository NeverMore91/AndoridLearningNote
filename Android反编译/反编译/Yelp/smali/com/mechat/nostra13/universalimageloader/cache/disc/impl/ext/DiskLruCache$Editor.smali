.class public final Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private committed:Z

.field private final entry:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)V
    .locals 1
    .parameter
    .parameter "entry"

    .prologue
    .line 771
    iput-object p1, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->this$0:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 772
    iput-object p2, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->entry:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    .line 773
    #getter for: Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->readable:Z
    invoke-static {p2}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$0(Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->written:[Z

    .line 774
    return-void

    .line 773
    :cond_0
    #getter for: Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->access$8(Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 771
    invoke-direct {p0, p1, p2}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;-><init>(Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$0(Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 768
    iput-boolean p1, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->hasErrors:Z

    return-void
.end method

.method static synthetic access$2(Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;)Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
    .locals 1
    .parameter

    .prologue
    .line 766
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->entry:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$3(Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;)[Z
    .locals 1
    .parameter

    .prologue
    .line 767
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->written:[Z

    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 868
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->this$0:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    const/4 v1, 0x0

    #calls: Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->completeEdit(Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->access$11(Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)V

    .line 869
    return-void
.end method

.method public abortUnlessCommitted()V
    .locals 1

    .prologue
    .line 872
    iget-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->committed:Z

    if-nez v0, :cond_0

    .line 874
    :try_start_0
    invoke-virtual {p0}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    :cond_0
    :goto_0
    return-void

    .line 875
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public commit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 854
    iget-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->this$0:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    const/4 v1, 0x0

    #calls: Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->completeEdit(Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->access$11(Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)V

    .line 856
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->this$0:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->entry:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    #getter for: Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v1}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$2(Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 860
    :goto_0
    iput-boolean v2, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->committed:Z

    .line 861
    return-void

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->this$0:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    #calls: Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->completeEdit(Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v2}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->access$11(Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)V

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 801
    invoke-virtual {p0, p1}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 802
    .local v0, in:Ljava/io/InputStream;
    if-eqz v0, :cond_0

    #calls: Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->access$7(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .locals 5
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 781
    iget-object v3, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->this$0:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    monitor-enter v3

    .line 782
    :try_start_0
    iget-object v2, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->entry:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    #getter for: Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->currentEditor:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    invoke-static {v2}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1(Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move-result-object v2

    if-eq v2, p0, :cond_0

    .line 783
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 781
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 785
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->entry:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    #getter for: Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$0(Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 786
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 791
    :goto_0
    return-object v1

    .line 789
    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->entry:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    invoke-virtual {v4, p1}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    .line 790
    :catch_0
    move-exception v0

    .line 791
    .local v0, e:Ljava/io/FileNotFoundException;
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .locals 7
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 813
    iget-object v5, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->this$0:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    monitor-enter v5

    .line 814
    :try_start_0
    iget-object v4, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->entry:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    #getter for: Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->currentEditor:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    invoke-static {v4}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1(Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move-result-object v4

    if-eq v4, p0, :cond_0

    .line 815
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 813
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 817
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->entry:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    #getter for: Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->readable:Z
    invoke-static {v4}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$0(Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 818
    iget-object v4, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->written:[Z

    const/4 v6, 0x1

    aput-boolean v6, v4, p1

    .line 820
    :cond_1
    iget-object v4, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->entry:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    invoke-virtual {v4, p1}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 823
    .local v0, dirtyFile:Ljava/io/File;
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 834
    .local v3, outputStream:Ljava/io/FileOutputStream;
    :goto_0
    :try_start_3
    new-instance v4, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v3, v6}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;)V

    monitor-exit v5

    .end local v3           #outputStream:Ljava/io/FileOutputStream;
    :goto_1
    return-object v4

    .line 824
    :catch_0
    move-exception v1

    .line 826
    .local v1, e:Ljava/io/FileNotFoundException;
    iget-object v4, p0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->this$0:Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    #getter for: Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {v4}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->access$9(Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 828
    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .restart local v3       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 829
    .end local v3           #outputStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 831
    .local v2, e2:Ljava/io/FileNotFoundException;
    :try_start_5
    invoke-static {}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->access$10()Ljava/io/OutputStream;

    move-result-object v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public set(ILjava/lang/String;)V
    .locals 4
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 840
    const/4 v0, 0x0

    .line 842
    .local v0, writer:Ljava/io/Writer;
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v2

    sget-object v3, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    .end local v0           #writer:Ljava/io/Writer;
    .local v1, writer:Ljava/io/Writer;
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 845
    invoke-static {v1}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 847
    return-void

    .line 844
    .end local v1           #writer:Ljava/io/Writer;
    .restart local v0       #writer:Ljava/io/Writer;
    :catchall_0
    move-exception v2

    .line 845
    :goto_0
    invoke-static {v0}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 846
    throw v2

    .line 844
    .end local v0           #writer:Ljava/io/Writer;
    .restart local v1       #writer:Ljava/io/Writer;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #writer:Ljava/io/Writer;
    .restart local v0       #writer:Ljava/io/Writer;
    goto :goto_0
.end method
