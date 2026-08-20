.class public Lcom/bytedance/sdk/openadsdk/ROR/Tgh;
.super Ljava/lang/Object;
.source "StepTrackImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/component/fl/qMt;


# static fields
.field private static Qhi:I


# instance fields
.field private CJ:Z

.field private ac:J

.field private cJ:J

.field private final fl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/ROR/Tgh;->cJ:J

    .line 23
    sget v0, Lcom/bytedance/sdk/openadsdk/ROR/Tgh;->Qhi:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/bytedance/sdk/openadsdk/ROR/Tgh;->Qhi:I

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "image_request_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/bytedance/sdk/openadsdk/ROR/Tgh;->Qhi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ROR/Tgh;->fl:Ljava/lang/String;

    return-void
.end method

.method private ac(Ljava/lang/String;Lcom/bytedance/sdk/component/fl/WAv;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_d

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "decode"

    const-string v2, "success"

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "cache_policy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "generate_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "net_request"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x8

    goto :goto_0

    :sswitch_3
    const-string v0, "memory_cache"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_4
    const-string v0, "check_duplicate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_5
    const-string v0, "failed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_7
    const-string v0, "disk_cache"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_8
    const-string v0, "image_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_9
    const-string v0, "raw_cache"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 55
    :pswitch_0
    const-string p1, "cache policy"

    return-object p1

    .line 67
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "generate key:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/bytedance/sdk/component/fl/WAv;->fl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 69
    :pswitch_2
    const-string p1, "net request"

    return-object p1

    .line 61
    :pswitch_3
    const-string p1, "memory cache"

    return-object p1

    .line 59
    :pswitch_4
    const-string p1, "duplicate request"

    return-object p1

    .line 73
    :pswitch_5
    instance-of p1, p2, Lcom/bytedance/sdk/component/fl/ac/ac;

    if-eqz p1, :cond_c

    .line 74
    check-cast p2, Lcom/bytedance/sdk/component/fl/ac/ac;

    .line 75
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/fl/ac/ac;->kYc()Lcom/bytedance/sdk/component/fl/ac/Qhi;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 77
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/Qhi;->ac()Ljava/lang/Throwable;

    move-result-object p2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fail\uff1acode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/Qhi;->Qhi()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/Qhi;->cJ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", exception:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p2, :cond_b

    .line 80
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_b
    const-string p2, "null \r\n"

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 83
    :cond_c
    const-string p1, "fail"

    return-object p1

    :pswitch_6
    return-object v1

    .line 65
    :pswitch_7
    const-string p1, "disk cache"

    return-object p1

    .line 85
    :pswitch_8
    const-string p1, "image type\uff1a"

    return-object p1

    .line 63
    :pswitch_9
    const-string p1, "raw cache"

    return-object p1

    :pswitch_a
    return-object v2

    :cond_d
    :goto_2
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f4abffd -> :sswitch_a
        -0x5e71f355 -> :sswitch_9
        -0x55fec062 -> :sswitch_8
        -0x551f49a0 -> :sswitch_7
        -0x4f9d6e12 -> :sswitch_6
        -0x4c696bc3 -> :sswitch_5
        -0x402f7d6c -> :sswitch_4
        0x3ca44ac4 -> :sswitch_3
        0x581f55ed -> :sswitch_2
        0x66732095 -> :sswitch_1
        0x7b42dc8f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public Qhi(Ljava/lang/String;Lcom/bytedance/sdk/component/fl/WAv;)V
    .locals 2

    .line 29
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/ROR/Tgh;->CJ:Z

    if-nez v0, :cond_0

    .line 30
    invoke-interface {p2}, Lcom/bytedance/sdk/component/fl/WAv;->Qhi()Ljava/lang/String;

    invoke-interface {p2}, Lcom/bytedance/sdk/component/fl/WAv;->cJ()I

    invoke-interface {p2}, Lcom/bytedance/sdk/component/fl/WAv;->ac()I

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/ROR/Tgh;->CJ:Z

    .line 33
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/ROR/Tgh;->cJ:J

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/ROR/Tgh;->ac(Ljava/lang/String;Lcom/bytedance/sdk/component/fl/WAv;)Ljava/lang/String;

    return-void
.end method

.method public cJ(Ljava/lang/String;Lcom/bytedance/sdk/component/fl/WAv;)V
    .locals 4

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/ROR/Tgh;->cJ:J

    sub-long/2addr v0, v2

    .line 40
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/ROR/Tgh;->ac:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/ROR/Tgh;->ac:J

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/ROR/Tgh;->ac(Ljava/lang/String;Lcom/bytedance/sdk/component/fl/WAv;)Ljava/lang/String;

    return-void
.end method
