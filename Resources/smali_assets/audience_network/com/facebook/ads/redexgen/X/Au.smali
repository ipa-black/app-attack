.class public final Lcom/facebook/ads/redexgen/X/Au;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Wd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PostRequestHandler"
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Wd;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 22646
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "19chgsqBzMImuF0gwnX2kWBGh"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "0va0RllBKLagHwkqX9d70BpModZgILa7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "XpojMROpw9tVkn"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "wcizW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "UvDBMI562EynJYmanZ8wO6TzDmvB3zda"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jZLpPncA8U18qC4rrohpR2MIc"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "dSPbX"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "wnd1v8XwPzGQd7q91R22pRoLt2u"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Au;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wd;Landroid/os/Looper;)V
    .locals 0

    .line 22647
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Au;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DefaultDrmSession<TT;>.PostRequestHandler;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Au;->A00:Lcom/facebook/ads/redexgen/X/Wd;

    .line 22648
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 22649
    return-void
.end method

.method private A00(I)J
    .locals 2

    .line 22650
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Au;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DefaultDrmSession<TT;>.PostRequestHandler;"
    add-int/lit8 v0, p1, -0x1

    mul-int/lit16 v1, v0, 0x3e8

    const/16 v0, 0x1388

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private A01(Landroid/os/Message;)Z
    .locals 4

    .line 22651
    .local p2, "this":Lcom/facebook/ads/redexgen/X/Au;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DefaultDrmSession<TT;>.PostRequestHandler;"
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    .line 22652
    .local v0, "allowRetry":Z
    :goto_0
    if-nez v0, :cond_1

    .line 22653
    return v2

    .line 22654
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 22655
    :cond_1
    iget v1, p1, Landroid/os/Message;->arg2:I

    add-int/2addr v1, v3

    .line 22656
    .local v3, "errorCount":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Au;->A00:Lcom/facebook/ads/redexgen/X/Wd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wd;->A00(Lcom/facebook/ads/redexgen/X/Wd;)I

    move-result v0

    if-le v1, v0, :cond_2

    .line 22657
    return v2

    .line 22658
    :cond_2
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    .line 22659
    .local v1, "retryMsg":Landroid/os/Message;
    iput v1, v2, Landroid/os/Message;->arg2:I

    .line 22660
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Au;->A00(I)J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Au;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 22661
    return v3
.end method


# virtual methods
.method public final A02(ILjava/lang/Object;Z)V
    .locals 1

    .line 22662
    .local p2, "this":Lcom/facebook/ads/redexgen/X/Au;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DefaultDrmSession<TT;>.PostRequestHandler;"
    .local v0, "allowRetryInt":I
    const/4 v0, 0x0

    .line 22663
    .local p0, "errorCount":I
    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/facebook/ads/redexgen/X/Au;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 22664
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Jt;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 22665
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Au;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DefaultDrmSession<TT;>.PostRequestHandler;"
    .local p2, "msg":Landroid/os/Message;
    :try_start_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22666
    .local v1, "request":Ljava/lang/Object;
    :try_start_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    .line 22667
    move-object v0, v5

    check-cast v0, Landroid/util/Pair;

    .line 22668
    .local v2, "keyRequest":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/ExoMediaDrm$KeyRequest;Ljava/lang/String;>;"
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/facebook/ads/redexgen/X/BH;

    .line 22669
    .local v3, "mediaDrmKeyRequest":Lcom/facebook/ads/redexgen/X/BH;
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 22670
    .local v4, "licenseServerUrl":Ljava/lang/String;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Au;->A00:Lcom/facebook/ads/redexgen/X/Wd;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Wd;->A0B:Lcom/facebook/ads/redexgen/X/BQ;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Au;->A00:Lcom/facebook/ads/redexgen/X/Wd;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Wd;->A0C:Ljava/util/UUID;

    invoke-interface {v1, v0, v3, v2}, Lcom/facebook/ads/redexgen/X/BQ;->executeKeyRequest(Ljava/util/UUID;Lcom/facebook/ads/redexgen/X/BH;Ljava/lang/String;)[B

    move-result-object v3

    .line 22671
    .local v5, "response":Ljava/lang/Object;
    goto :goto_0

    .line 22672
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Au;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DefaultDrmSession<TT;>.PostRequestHandler;"
    .end local v2    # "keyRequest":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/ExoMediaDrm$KeyRequest;Ljava/lang/String;>;"
    .end local v3    # "mediaDrmKeyRequest":Lcom/facebook/ads/redexgen/X/BH;
    .end local v4    # "licenseServerUrl":Ljava/lang/String;
    .end local v5    # "response":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 22673
    :cond_2
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Au;->A00:Lcom/facebook/ads/redexgen/X/Wd;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Wd;->A0B:Lcom/facebook/ads/redexgen/X/BQ;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Au;->A00:Lcom/facebook/ads/redexgen/X/Wd;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Wd;->A0C:Ljava/util/UUID;

    move-object v0, v5

    check-cast v0, Lcom/facebook/ads/redexgen/X/BL;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/BQ;->executeProvisionRequest(Ljava/util/UUID;Lcom/facebook/ads/redexgen/X/BL;)[B

    move-result-object v3

    .line 22674
    .restart local v5    # "response":Ljava/lang/Object;
    goto :goto_0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22675
    .end local v5    # "response":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 22676
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-direct {v4, p1}, Lcom/facebook/ads/redexgen/X/Au;->A01(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22677
    return-void

    .line 22678
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v5    # "response":Ljava/lang/Object;
    :cond_3
    :goto_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Au;->A00:Lcom/facebook/ads/redexgen/X/Wd;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Wd;->A0A:Lcom/facebook/ads/redexgen/X/Av;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v5, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Av;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 22679
    return-void
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0
    .end local v1    # "request":Ljava/lang/Object;
    .end local v5    # "response":Ljava/lang/Object;
    .end local p2
    :catchall_0
    move-exception v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Au;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Au;->A01:[Ljava/lang/String;

    const-string v1, "Qv5YLOa2TifOFD04FKBpDBiu6ZOimxtA"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "EvRrjcZjHPEeu1iGM0yZj3H6zHpxg3cX"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/Jt;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
