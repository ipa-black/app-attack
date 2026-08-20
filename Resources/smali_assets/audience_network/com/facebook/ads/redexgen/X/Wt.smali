.class public final Lcom/facebook/ads/redexgen/X/Wt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/IG;
.implements Lcom/facebook/ads/redexgen/X/AM;
.implements Lcom/facebook/ads/redexgen/X/FU;
.implements Lcom/facebook/ads/redexgen/X/DC;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/De;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ComponentListener"
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/De;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 65569
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "nMHZhEZSp5EcTMzj890UQSIKsf7nOssk"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "WLzxKTE2vNTMCpqDs"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "SfczCGFglH"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "X5aT15p3N3rGxVL5g"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "GbnJfxrb9aQYK7s9S1Y8QTSWgx7P8ZxV"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "tLWa3XxeFvyx8wOT4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "wILb6N7ReXeeP8cmU"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dyBLf42uqj"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Wt;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/De;)V
    .locals 0

    .line 65570
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/De;Lcom/facebook/ads/redexgen/X/9r;)V
    .locals 0

    .line 65571
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Wt;-><init>(Lcom/facebook/ads/redexgen/X/De;)V

    return-void
.end method


# virtual methods
.method public final AAG(Ljava/lang/String;JJ)V
    .locals 8

    .line 65572
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/De;->A0D(Lcom/facebook/ads/redexgen/X/De;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/AM;

    .line 65573
    .local v1, "audioDebugListener":Lcom/facebook/ads/redexgen/X/AM;
    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/AM;->AAG(Ljava/lang/String;JJ)V

    .line 65574
    .end local v1    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/AM;
    goto :goto_0

    .line 65575
    :cond_0
    return-void
.end method

.method public final AAH(Lcom/facebook/ads/redexgen/X/Ap;)V
    .locals 5

    .line 65576
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/De;->A0D(Lcom/facebook/ads/redexgen/X/De;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/AM;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wt;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 65577
    .local v1, "audioDebugListener":Lcom/facebook/ads/redexgen/X/AM;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wt;->A01:[Ljava/lang/String;

    const-string v1, "5uZ3F86UAJ67QZD2oUJwcWpEFJTFqeup"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-interface {v3, p1}, Lcom/facebook/ads/redexgen/X/AM;->AAH(Lcom/facebook/ads/redexgen/X/Ap;)V

    .line 65578
    .end local v1    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/AM;
    goto :goto_0

    .line 65579
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/De;->A04(Lcom/facebook/ads/redexgen/X/De;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    .line 65580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/De;->A06(Lcom/facebook/ads/redexgen/X/De;Lcom/facebook/ads/redexgen/X/Ap;)Lcom/facebook/ads/redexgen/X/Ap;

    .line 65581
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A00(Lcom/facebook/ads/redexgen/X/De;I)I

    .line 65582
    return-void
.end method

.method public final AAI(Lcom/facebook/ads/redexgen/X/Ap;)V
    .locals 2

    .line 65583
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/De;->A06(Lcom/facebook/ads/redexgen/X/De;Lcom/facebook/ads/redexgen/X/Ap;)Lcom/facebook/ads/redexgen/X/Ap;

    .line 65584
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/De;->A0D(Lcom/facebook/ads/redexgen/X/De;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/AM;

    .line 65585
    .local v1, "audioDebugListener":Lcom/facebook/ads/redexgen/X/AM;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/AM;->AAI(Lcom/facebook/ads/redexgen/X/Ap;)V

    .line 65586
    .end local v1    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/AM;
    goto :goto_0

    .line 65587
    :cond_0
    return-void
.end method

.method public final AAJ(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V
    .locals 2

    .line 65588
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/De;->A04(Lcom/facebook/ads/redexgen/X/De;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    .line 65589
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/De;->A0D(Lcom/facebook/ads/redexgen/X/De;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/AM;

    .line 65590
    .local v1, "audioDebugListener":Lcom/facebook/ads/redexgen/X/AM;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/AM;->AAJ(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    .line 65591
    .end local v1    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/AM;
    goto :goto_0

    .line 65592
    :cond_0
    return-void
.end method

.method public final AAK(I)V
    .locals 2

    .line 65593
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/De;->A00(Lcom/facebook/ads/redexgen/X/De;I)I

    .line 65594
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/De;->A0D(Lcom/facebook/ads/redexgen/X/De;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/AM;

    .line 65595
    .local v1, "audioDebugListener":Lcom/facebook/ads/redexgen/X/AM;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/AM;->AAK(I)V

    .line 65596
    .end local v1    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/AM;
    goto :goto_0

    .line 65597
    :cond_0
    return-void
.end method

.method public final AAL(IJJ)V
    .locals 8

    .line 65598
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/De;->A0D(Lcom/facebook/ads/redexgen/X/De;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/AM;

    .line 65599
    .local v1, "audioDebugListener":Lcom/facebook/ads/redexgen/X/AM;
    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/AM;->AAL(IJJ)V

    .line 65600
    .end local v1    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/AM;
    goto :goto_0

    .line 65601
    :cond_0
    return-void
.end method

.method public final AAf(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/FQ;",
            ">;)V"
        }
    .end annotation

    .line 65602
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/Cue;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/De;->A08(Lcom/facebook/ads/redexgen/X/De;Ljava/util/List;)Ljava/util/List;

    .line 65603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/De;->A09(Lcom/facebook/ads/redexgen/X/De;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/FU;

    .line 65604
    .local v1, "textOutput":Lcom/facebook/ads/redexgen/X/FU;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/FU;->AAf(Ljava/util/List;)V

    .line 65605
    .end local v1    # "textOutput":Lcom/facebook/ads/redexgen/X/FU;
    goto :goto_0

    .line 65606
    :cond_0
    return-void
.end method

.method public final AAr(IJ)V
    .locals 2

    .line 65607
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/De;->A0B(Lcom/facebook/ads/redexgen/X/De;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/IG;

    .line 65608
    .local v1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/IG;
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/IG;->AAr(IJ)V

    .line 65609
    .end local v1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/IG;
    goto :goto_0

    .line 65610
    :cond_0
    return-void
.end method

.method public final ABl(Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;)V
    .locals 2

    .line 65611
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/De;->A0A(Lcom/facebook/ads/redexgen/X/De;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/DC;

    .line 65612
    .local v1, "metadataOutput":Lcom/facebook/ads/redexgen/X/DC;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/DC;->ABl(Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;)V

    .line 65613
    .end local v1    # "metadataOutput":Lcom/facebook/ads/redexgen/X/DC;
    goto :goto_0

    .line 65614
    :cond_0
    return-void
.end method

.method public final ACL(Landroid/view/Surface;)V
    .locals 2

    .line 65615
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/De;->A01(Lcom/facebook/ads/redexgen/X/De;)Landroid/view/Surface;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 65616
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/De;->A0C(Lcom/facebook/ads/redexgen/X/De;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65617
    .local v1, "videoListener":Lcom/facebook/ads/redexgen/X/I7;
    .end local v1    # "videoListener":Lcom/facebook/ads/redexgen/X/I7;
    goto :goto_0

    .line 65618
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/De;->A0B(Lcom/facebook/ads/redexgen/X/De;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/IG;

    .line 65619
    .local v1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/IG;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/IG;->ACL(Landroid/view/Surface;)V

    .line 65620
    .end local v1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/IG;
    goto :goto_1

    .line 65621
    :cond_1
    return-void
.end method

.method public final ACw(Ljava/lang/String;JJ)V
    .locals 8

    .line 65622
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/De;->A0B(Lcom/facebook/ads/redexgen/X/De;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/IG;

    .line 65623
    .local v1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/IG;
    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/IG;->ACw(Ljava/lang/String;JJ)V

    .line 65624
    .end local v1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/IG;
    goto :goto_0

    .line 65625
    :cond_0
    return-void
.end method

.method public final ACx(Lcom/facebook/ads/redexgen/X/Ap;)V
    .locals 4

    .line 65626
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/De;->A0B(Lcom/facebook/ads/redexgen/X/De;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/IG;

    .line 65627
    .local v1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/IG;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/IG;->ACx(Lcom/facebook/ads/redexgen/X/Ap;)V

    .line 65628
    .end local v1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/IG;
    goto :goto_0

    .line 65629
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/De;->A03(Lcom/facebook/ads/redexgen/X/De;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wt;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 65630
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wt;->A01:[Ljava/lang/String;

    const-string v1, "zG8NefRqMKYqbgzRufdCrC4W5rqrDhRZ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/De;->A05(Lcom/facebook/ads/redexgen/X/De;Lcom/facebook/ads/redexgen/X/Ap;)Lcom/facebook/ads/redexgen/X/Ap;

    .line 65631
    return-void
.end method

.method public final ACy(Lcom/facebook/ads/redexgen/X/Ap;)V
    .locals 5

    .line 65632
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/De;->A05(Lcom/facebook/ads/redexgen/X/De;Lcom/facebook/ads/redexgen/X/Ap;)Lcom/facebook/ads/redexgen/X/Ap;

    .line 65633
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/De;->A0B(Lcom/facebook/ads/redexgen/X/De;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wt;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x37

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wt;->A01:[Ljava/lang/String;

    const-string v1, "B3QwduSxUwudXX0SLqqw26pCzLpqq2sU"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/IG;

    .line 65634
    .local v1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/IG;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/IG;->ACy(Lcom/facebook/ads/redexgen/X/Ap;)V

    .line 65635
    .end local v1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/IG;
    goto :goto_0

    .line 65636
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AD3(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V
    .locals 2

    .line 65637
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/De;->A03(Lcom/facebook/ads/redexgen/X/De;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    .line 65638
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/De;->A0B(Lcom/facebook/ads/redexgen/X/De;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/IG;

    .line 65639
    .local v1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/IG;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/IG;->AD3(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    .line 65640
    .end local v1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/IG;
    goto :goto_0

    .line 65641
    :cond_0
    return-void
.end method

.method public final AD9(IIIF)V
    .locals 5

    .line 65642
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/De;->A0C(Lcom/facebook/ads/redexgen/X/De;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/I7;

    .line 65643
    .local v1, "videoListener":Lcom/facebook/ads/redexgen/X/I7;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/I7;->AD9(IIIF)V

    .line 65644
    .end local v1    # "videoListener":Lcom/facebook/ads/redexgen/X/I7;
    goto :goto_0

    .line 65645
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/De;->A0B(Lcom/facebook/ads/redexgen/X/De;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wt;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wt;->A01:[Ljava/lang/String;

    const-string v1, "2vUTxC8fdDWhhRkArIujhTo4qLvFXYNt"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/IG;

    .line 65646
    .local v1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/IG;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/IG;->AD9(IIIF)V

    .line 65647
    .end local v1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/IG;
    goto :goto_1

    .line 65648
    :cond_2
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .line 65649
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A0H(Lcom/facebook/ads/redexgen/X/De;Landroid/view/Surface;Z)V

    .line 65650
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .line 65651
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/De;->A0H(Lcom/facebook/ads/redexgen/X/De;Landroid/view/Surface;Z)V

    .line 65652
    return v1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 65653
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 65654
    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 65655
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 65656
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A0H(Lcom/facebook/ads/redexgen/X/De;Landroid/view/Surface;Z)V

    .line 65657
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 65658
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/De;

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A0H(Lcom/facebook/ads/redexgen/X/De;Landroid/view/Surface;Z)V

    .line 65659
    return-void
.end method
