.class public Lcom/bytedance/sdk/component/fl/CJ/Gm;
.super Lcom/bytedance/sdk/component/fl/CJ/ROR;
.source "DecoderVisitor.java"


# instance fields
.field private Qhi:[B

.field private cJ:Lcom/bytedance/sdk/component/fl/ROR;


# direct methods
.method public constructor <init>([BLcom/bytedance/sdk/component/fl/ROR;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/bytedance/sdk/component/fl/CJ/ROR;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/bytedance/sdk/component/fl/CJ/Gm;->Qhi:[B

    .line 30
    iput-object p2, p0, Lcom/bytedance/sdk/component/fl/CJ/Gm;->cJ:Lcom/bytedance/sdk/component/fl/ROR;

    return-void
.end method

.method private Qhi(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/component/fl/ac/ac;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/CJ/Gm;->cJ:Lcom/bytedance/sdk/component/fl/ROR;

    if-nez v0, :cond_0

    .line 71
    new-instance p1, Lcom/bytedance/sdk/component/fl/CJ/HzH;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/fl/CJ/HzH;-><init>()V

    invoke-virtual {p4, p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->Qhi(Lcom/bytedance/sdk/component/fl/CJ/pA;)Z

    return-void

    .line 73
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/fl/CJ/iMK;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/fl/CJ/iMK;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p4, v0}, Lcom/bytedance/sdk/component/fl/ac/ac;->Qhi(Lcom/bytedance/sdk/component/fl/CJ/pA;)Z

    return-void
.end method


# virtual methods
.method public Qhi()Ljava/lang/String;
    .locals 1

    .line 79
    const-string v0, "decode"

    return-object v0
.end method

.method public Qhi(Lcom/bytedance/sdk/component/fl/ac/ac;)V
    .locals 6

    .line 36
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->tP()Lcom/bytedance/sdk/component/fl/ac/ROR;

    move-result-object v0

    .line 38
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/fl/ac/ROR;->Qhi(Lcom/bytedance/sdk/component/fl/ac/ac;)Lcom/bytedance/sdk/component/fl/ac/cJ/Qhi;

    move-result-object v1

    const/16 v2, 0x3ea

    .line 41
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->EBS()Lcom/bytedance/sdk/component/fl/pA;

    .line 46
    iget-object v3, p0, Lcom/bytedance/sdk/component/fl/CJ/Gm;->Qhi:[B

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/fl/ac/cJ/Qhi;->Qhi([B)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 49
    new-instance v3, Lcom/bytedance/sdk/component/fl/CJ/tP;

    iget-object v4, p0, Lcom/bytedance/sdk/component/fl/CJ/Gm;->cJ:Lcom/bytedance/sdk/component/fl/ROR;

    const/4 v5, 0x0

    invoke-direct {v3, v1, v4, v5}, Lcom/bytedance/sdk/component/fl/CJ/tP;-><init>(Ljava/lang/Object;Lcom/bytedance/sdk/component/fl/ROR;Z)V

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/component/fl/ac/ac;->Qhi(Lcom/bytedance/sdk/component/fl/CJ/pA;)Z

    .line 51
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->fl()Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->MQ()Lcom/bytedance/sdk/component/fl/cJ;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/component/fl/ac/ROR;->Qhi(Lcom/bytedance/sdk/component/fl/cJ;)Lcom/bytedance/sdk/component/fl/tP;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Lcom/bytedance/sdk/component/fl/tP;->Qhi(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    .line 56
    :cond_0
    const-string v0, "decode failed bitmap null"

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/bytedance/sdk/component/fl/CJ/Gm;->Qhi(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/component/fl/ac/ac;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "decode failed:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1, v0, p1}, Lcom/bytedance/sdk/component/fl/CJ/Gm;->Qhi(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/component/fl/ac/ac;)V

    return-void
.end method
