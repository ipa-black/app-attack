.class public Lcom/bytedance/sdk/openadsdk/cJ/Qhi;
.super Ljava/lang/Object;
.source "AdEvent.java"

# interfaces
.implements Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Qhi/ac;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;
    }
.end annotation


# static fields
.field private static final WAv:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ABk:Ljava/lang/String;

.field private CJ:J

.field private EBS:I

.field private final Gm:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private HzH:Ljava/lang/String;

.field private MQ:Ljava/lang/String;

.field public final Qhi:Ljava/lang/String;

.field private ROR:I

.field private Sf:I

.field private final Tgh:Ljava/lang/String;

.field private ac:Z

.field private bxS:Ljava/lang/String;

.field protected final cJ:Lorg/json/JSONObject;

.field private fl:J

.field private hm:I

.field private hpZ:Ljava/lang/String;

.field private iMK:Ljava/lang/String;

.field private kYc:Ljava/lang/String;

.field private pA:Ljava/lang/String;

.field private qMt:Ljava/lang/String;

.field private tP:Lcom/bytedance/sdk/openadsdk/cJ/cJ/Qhi;

.field private zc:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 56
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "insight_log"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->WAv:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)V
    .locals 3

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "adiff"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->Tgh:Ljava/lang/String;

    .line 153
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->Gm:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 336
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->zc:Lorg/json/JSONObject;

    .line 366
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/bxS;->Qhi()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->Qhi:Ljava/lang/String;

    goto :goto_0

    .line 369
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->Qhi:Ljava/lang/String;

    .line 372
    :goto_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->cJ(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)Lcom/bytedance/sdk/openadsdk/cJ/cJ/Qhi;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->tP:Lcom/bytedance/sdk/openadsdk/cJ/cJ/Qhi;

    .line 373
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->ac(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->qMt:Ljava/lang/String;

    .line 375
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->CJ(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->ABk:Ljava/lang/String;

    .line 376
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->fl(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->iMK:Ljava/lang/String;

    .line 378
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->Tgh(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    const-string v0, "app_union"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->pA:Ljava/lang/String;

    goto :goto_1

    .line 381
    :cond_1
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->Tgh(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->pA:Ljava/lang/String;

    .line 384
    :goto_1
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->ROR(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->MQ:Ljava/lang/String;

    .line 386
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->Sf(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->hpZ:Ljava/lang/String;

    .line 388
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->hm(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->kYc:Ljava/lang/String;

    .line 389
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->WAv(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->HzH:Ljava/lang/String;

    .line 390
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->Gm(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->EBS:I

    .line 391
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->zc(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->bxS:Ljava/lang/String;

    .line 392
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->ABk(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->ABk(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_2

    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_2
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->zc:Lorg/json/JSONObject;

    .line 394
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->cJ:Lorg/json/JSONObject;

    .line 395
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->zc(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 397
    :try_start_0
    const-string v1, "app_log_url"

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->zc(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 399
    const-string v1, "AdEvent"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :cond_3
    :goto_3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->iMK(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->ROR:I

    .line 403
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->pA(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->Sf:I

    .line 404
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->Qhi:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->hm:I

    .line 405
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->hpZ(Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->ac:Z

    .line 406
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->fl:J

    .line 407
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->Tgh()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "adiff"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->Tgh:Ljava/lang/String;

    .line 153
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->Gm:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 336
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->zc:Lorg/json/JSONObject;

    .line 59
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->Qhi:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->cJ:Lorg/json/JSONObject;

    return-void
.end method

.method private Qhi(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    .line 158
    const-string v0, "image_mode"

    const-string v1, "real_interaction_method"

    const-string v2, "interaction_method"

    const-string v3, "adiff"

    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 159
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->Qhi:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    :cond_0
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->ac:Z

    if-eqz v3, :cond_3

    .line 162
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 163
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->ROR:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 165
    :cond_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 166
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->Sf:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 168
    :cond_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 169
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->hm:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 172
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pangle-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->Qhi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 173
    const-string v1, "pangle_client_unique_id"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v0, "error "

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "AdEvent"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private static Qhi(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    .line 631
    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->WAv:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "label"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 635
    :cond_0
    const-string p1, "is_ad_event"

    const-string v0, "1"

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 637
    const-string p1, "AdEvent"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    const-string v0, "0"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 118
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 123
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 p3, 0x1

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "app_union"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string p1, "event_v3"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string p1, "event_v1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v0, p3

    goto :goto_0

    :sswitch_3
    const-string p1, "umeng"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move v1, p3

    :cond_6
    :goto_1
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x6a3d346 -> :sswitch_3
        0x1093c240 -> :sswitch_2
        0x1093c242 -> :sswitch_1
        0x6dec5731 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private ROR()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 291
    const-string v0, "value"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->cJ:Lorg/json/JSONObject;

    const-string v2, "app_log_url"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->bxS:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->cJ:Lorg/json/JSONObject;

    const-string v2, "tag"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->ABk:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 293
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->cJ:Lorg/json/JSONObject;

    const-string v2, "label"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->iMK:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->cJ:Lorg/json/JSONObject;

    const-string v2, "category"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->pA:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->hpZ:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->cJ:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->hpZ:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    :catch_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->cJ:Lorg/json/JSONObject;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->kYc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 305
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->cJ:Lorg/json/JSONObject;

    const-string v1, "ext_value"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->kYc:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 311
    :catch_1
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->qMt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->cJ:Lorg/json/JSONObject;

    const-string v1, "log_extra"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->qMt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->MQ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 317
    :try_start_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->cJ:Lorg/json/JSONObject;

    const-string v1, "ua_policy"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->MQ:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 322
    :catch_2
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->cJ:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->iMK:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->Qhi(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 324
    :try_start_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->cJ:Lorg/json/JSONObject;

    const-string v1, "nt"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->EBS:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 327
    :catch_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->zc:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 328
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 329
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 330
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->zc:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 331
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->cJ:Lorg/json/JSONObject;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_4
    return-void
.end method

.method private Tgh()V
    .locals 6

    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->zc:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->hpZ:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->pA:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->qMt:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 70
    :cond_0
    const-string v1, "value"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->zc:Lorg/json/JSONObject;

    const-string v2, "category"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->zc:Lorg/json/JSONObject;

    const-string v3, "log_extra"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->hpZ:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->pA:Ljava/lang/String;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->qMt:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const-string v4, "0"

    if-eqz v3, :cond_2

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 78
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->cJ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 83
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->hpZ:Ljava/lang/String;

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->hpZ:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 87
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->pA:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->pA:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->cJ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 88
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->cJ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    .line 91
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->qMt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 96
    :cond_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/fl;->Qhi:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->CJ:J

    :cond_8
    :goto_0
    return-void
.end method

.method private cJ(Ljava/lang/String;)Z
    .locals 4

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "app_union"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "event_v3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "event_v1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_0

    :sswitch_3
    const-string v0, "umeng"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    move v1, v2

    :pswitch_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0x6a3d346 -> :sswitch_3
        0x1093c240 -> :sswitch_2
        0x1093c242 -> :sswitch_1
        0x6dec5731 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public CJ()Ljava/lang/String;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->Qhi:Ljava/lang/String;

    return-object v0
.end method

.method public Qhi()J
    .locals 2

    .line 418
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->fl:J

    return-wide v0
.end method

.method public Qhi(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 412
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->ac()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public Qhi(Z)Lorg/json/JSONObject;
    .locals 3

    .line 237
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->ac()Lorg/json/JSONObject;

    move-result-object v0

    .line 239
    const-string v1, "app_log_url"

    if-eqz p1, :cond_1

    .line 240
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 241
    const-string v2, "params"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 243
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    return-object p1

    .line 247
    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 253
    const-string v1, "AdEvent"

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public ac()Lorg/json/JSONObject;
    .locals 6

    .line 187
    const-string v0, "ad_extra_data"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->Gm:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->cJ:Lorg/json/JSONObject;

    return-object v0

    .line 191
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->ROR()V

    .line 196
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->cJ:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "json error"

    const-string v3, "AdEvent"

    if-eqz v1, :cond_2

    .line 197
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->cJ:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    .line 200
    :try_start_2
    instance-of v4, v1, Lorg/json/JSONObject;

    if-eqz v4, :cond_1

    .line 201
    const-string v4, "ad_extra_data is JSONObject"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    check-cast v1, Lorg/json/JSONObject;

    .line 203
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->Qhi(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 204
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->cJ:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 205
    :cond_1
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 206
    new-instance v4, Lorg/json/JSONObject;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-direct {p0, v4}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->Qhi(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 208
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->cJ:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 212
    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 215
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 217
    :try_start_4
    const-string v4, "adiff"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->Qhi:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->ac:Z

    if-eqz v4, :cond_3

    .line 219
    const-string v4, "interaction_method"

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->ROR:I

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 220
    const-string v4, "real_interaction_method"

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->Sf:I

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 221
    const-string v4, "image_mode"

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->hm:I

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 223
    :cond_3
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->cJ:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 225
    :try_start_5
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->Gm:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 231
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 233
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->cJ:Lorg/json/JSONObject;

    return-object v0
.end method

.method public cJ()J
    .locals 2

    .line 424
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->CJ:J

    return-wide v0
.end method

.method public fl()Z
    .locals 4

    .line 580
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->cJ:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 583
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->iMK()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 587
    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->cJ:Lorg/json/JSONObject;

    const-string v3, "label"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 588
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 589
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->iMK:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 592
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->iMK:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 595
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
