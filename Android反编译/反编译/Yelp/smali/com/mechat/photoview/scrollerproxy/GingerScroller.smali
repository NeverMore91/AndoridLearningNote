.class public Lcom/mechat/photoview/scrollerproxy/GingerScroller;
.super Lcom/mechat/photoview/scrollerproxy/ScrollerProxy;
.source "GingerScroller.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# instance fields
.field private mFirstScroll:Z

.field protected final mScroller:Landroid/widget/OverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/mechat/photoview/scrollerproxy/ScrollerProxy;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mechat/photoview/scrollerproxy/GingerScroller;->mFirstScroll:Z

    .line 29
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mechat/photoview/scrollerproxy/GingerScroller;->mScroller:Landroid/widget/OverScroller;

    .line 30
    return-void
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/mechat/photoview/scrollerproxy/GingerScroller;->mFirstScroll:Z

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/mechat/photoview/scrollerproxy/GingerScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mechat/photoview/scrollerproxy/GingerScroller;->mFirstScroll:Z

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/mechat/photoview/scrollerproxy/GingerScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method public fling(IIIIIIIIII)V
    .locals 11
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"
    .parameter "overX"
    .parameter "overY"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mechat/photoview/scrollerproxy/GingerScroller;->mScroller:Landroid/widget/OverScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 47
    return-void
.end method

.method public forceFinished(Z)V
    .locals 1
    .parameter "finished"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mechat/photoview/scrollerproxy/GingerScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 52
    return-void
.end method

.method public getCurrX()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mechat/photoview/scrollerproxy/GingerScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public getCurrY()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mechat/photoview/scrollerproxy/GingerScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mechat/photoview/scrollerproxy/GingerScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    return v0
.end method
