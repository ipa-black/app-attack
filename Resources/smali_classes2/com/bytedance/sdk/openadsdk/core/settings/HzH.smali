.class public Lcom/bytedance/sdk/openadsdk/core/settings/HzH;
.super Ljava/lang/Object;
.source "TTSdkSettings.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/settings/ROR;
.implements Lcom/bytedance/sdk/openadsdk/core/settings/pA$Qhi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/settings/HzH$Qhi;
    }
.end annotation


# static fields
.field public static Qhi:Ljava/lang/String;

.field private static final Sf:Lcom/bytedance/sdk/component/Sf/hm;

.field private static final Tgh:Ljava/lang/String;

.field static final ac:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static cJ:Ljava/lang/String;

.field private static hm:Z

.field private static final qMt:Lcom/bytedance/sdk/openadsdk/core/settings/zc;

.field private static final tP:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/bytedance/sdk/openadsdk/core/settings/hpZ$Qhi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ABk:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final CJ:Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ<",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final CQU:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Dww:Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final EBS:Landroid/content/BroadcastReceiver;

.field private Eh:Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final Gm:Lcom/bytedance/sdk/openadsdk/core/settings/Qhi;

.field private HzH:I

.field private MQ:Lcom/bytedance/sdk/openadsdk/core/settings/WAv;

.field private ROR:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final WAv:Lcom/bytedance/sdk/openadsdk/core/settings/Gm;

.field private final bxS:Ljava/lang/Runnable;

.field fl:Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ<",
            "Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA;",
            ">;"
        }
    .end annotation
.end field

.field private hpZ:I

.field private volatile iMK:Z

.field private kYc:Z

.field private pA:Z

.field private final pM:Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 406
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/js;->iMK()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Tgh:Ljava/lang/String;

    .line 411
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$1;

    const-string v1, "TemplateReInitTask"

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Sf:Lcom/bytedance/sdk/component/Sf/hm;

    .line 421
    const-string v0, ""

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Qhi:Ljava/lang/String;

    .line 422
    const-string v0, "IABTCF_TCString"

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->cJ:Ljava/lang/String;

    const/4 v0, 0x0

    .line 425
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->hm:Z

    .line 470
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->tP:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 1698
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/settings/zc;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/zc;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->qMt:Lcom/bytedance/sdk/openadsdk/core/settings/zc;

    .line 1777
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->ac:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->ROR:Ljava/util/Set;

    .line 431
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/settings/Gm;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/Gm;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->WAv:Lcom/bytedance/sdk/openadsdk/core/settings/Gm;

    .line 432
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/settings/Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/Qhi;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Gm:Lcom/bytedance/sdk/openadsdk/core/settings/Qhi;

    .line 436
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$6;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/HzH;)V

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/hpZ$Qhi;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    .line 461
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->ABk:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 462
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->iMK:Z

    .line 463
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->pA:Z

    const/16 v0, 0x1388

    .line 466
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->hpZ:I

    const/16 v0, 0xa

    .line 467
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->HzH:I

    .line 1700
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$11;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$11;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/HzH;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->EBS:Landroid/content/BroadcastReceiver;

    .line 1767
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$12;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$12;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/HzH;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->bxS:Ljava/lang/Runnable;

    .line 1778
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$13;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$13;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/HzH;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->CJ:Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;

    .line 1802
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/HzH;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Dww:Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;

    .line 1836
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->CQU:Ljava/util/Set;

    .line 1837
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/HzH;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->pM:Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;

    .line 1941
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/HzH;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Eh:Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;

    .line 2006
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/HzH;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->fl:Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;

    .line 475
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v1

    .line 476
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 477
    const-string v3, "_dataChanged"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 478
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-lt v3, v4, :cond_0

    const/4 v3, 0x4

    .line 479
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void

    .line 481
    :cond_0
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 484
    const-string v1, "TTAD.SdkSettings"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/settings/HzH$1;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;-><init>()V

    return-void
.end method

.method private static CJ(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 0

    .line 600
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private Ki()J
    .locals 6

    .line 1520
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "req_inter_min"

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1

    const-wide/32 v4, 0x5265c00

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method private LcF()Ljava/lang/String;
    .locals 3

    .line 964
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "force_language"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private Ohm()I
    .locals 3

    .line 1185
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "coppa"

    const/16 v2, -0x63

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/settings/HzH;I)I
    .locals 0

    .line 71
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->HzH:I

    return p1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/settings/HzH;)Lcom/bytedance/sdk/openadsdk/core/settings/iMK;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    return-object p0
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/core/settings/hpZ$Qhi;)V
    .locals 2

    .line 2045
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->tP:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2046
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static SNp()V
    .locals 3

    .line 550
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/cJ;->ac()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 554
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 557
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 558
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    const-string v2, "_dataChanged"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 565
    const-string v1, "TTAD.SdkSettings"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static Ug()Z
    .locals 1

    .line 2041
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->hm:Z

    return v0
.end method

.method public static YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;
    .locals 3

    .line 614
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 616
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 617
    const-string v2, "Pangle"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 618
    invoke-static {v1, v1, v0}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 619
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->qMt:Lcom/bytedance/sdk/openadsdk/core/settings/zc;

    return-object v0

    .line 621
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/settings/HzH;

    return-object v0
.end method

.method private static ac(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/16 p0, 0x14

    return p0

    :cond_0
    const/4 p0, 0x5

    return p0
.end method

.method public static ac(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 588
    const-string v0, ""

    if-eqz p0, :cond_0

    .line 589
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->CJ(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 591
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->cJ:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static cJ(Landroid/content/Context;)I
    .locals 3

    if-eqz p0, :cond_1

    .line 574
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->CJ(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 576
    const-string v0, "IABTCF_CmpSdkID"

    const/high16 v1, -0x80000000

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 577
    const-string v2, "IABTCF_CmpSdkVersion"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v1, :cond_0

    if-eq v2, v1, :cond_1

    .line 580
    :cond_0
    const-string v0, "IABTCF_gdprApplies"

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x2

    return p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/settings/HzH;I)I
    .locals 0

    .line 71
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->hpZ:I

    return p1
.end method

.method private static cJ(IZ)V
    .locals 3

    .line 529
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 532
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 533
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    const-string v2, "_tryFetRemoDat"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    const-string v2, "_force"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 536
    const-string p1, "_source"

    invoke-virtual {v1, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 537
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method static synthetic cJ(Z)Z
    .locals 0

    .line 71
    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->hm:Z

    return p0
.end method

.method private mz()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1876
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->CQU:Ljava/util/Set;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->pM:Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;

    const-string v3, "perf_con_applog_send"

    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method static synthetic ne()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    .line 71
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->tP:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method private yy()J
    .locals 4

    .line 1530
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "last_req_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic zTC()Ljava/lang/String;
    .locals 1

    .line 71
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Tgh:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public ABk(Ljava/lang/String;)I
    .locals 0

    .line 1105
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object p1

    .line 1106
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->Sf:I

    return p1
.end method

.method public ABk()Z
    .locals 3

    .line 756
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "support_mem_dynamic"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    return v2
.end method

.method public CJ()I
    .locals 3

    .line 667
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "max_tpl_cnts"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public CJ(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1557
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Qhi(IZ)V

    return-void
.end method

.method public CJ(Ljava/lang/String;)Z
    .locals 0

    .line 994
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object p1

    .line 995
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->NFd:Z

    return p1
.end method

.method public CQU()I
    .locals 3

    .line 902
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "max"

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public CQU(Ljava/lang/String;)I
    .locals 0

    .line 1277
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object p1

    .line 1278
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->lG:I

    return p1
.end method

.method public DaO()Ljava/lang/String;
    .locals 3

    .line 841
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "bus_con_express_host"

    const-string v2, "https://sf16-static.i18n-pglstatp.com/obj/ad-pattern-sg/"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Dq()Z
    .locals 1

    .line 1416
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->iMK:Z

    return v0
.end method

.method public Dww()J
    .locals 4

    .line 898
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "duration"

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Dww(Ljava/lang/String;)Z
    .locals 0

    .line 1272
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object p1

    .line 1273
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->lB:Z

    return p1
.end method

.method public EBS(Ljava/lang/String;)I
    .locals 0

    .line 1257
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object p1

    .line 1258
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->Eh:I

    return p1
.end method

.method public EBS()Lcom/bytedance/sdk/openadsdk/core/settings/WAv;
    .locals 4

    .line 881
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->MQ:Lcom/bytedance/sdk/openadsdk/core/settings/WAv;

    if-eqz v0, :cond_0

    return-object v0

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->WAv:Lcom/bytedance/sdk/openadsdk/core/settings/Gm;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/settings/WAv;->Qhi:Lcom/bytedance/sdk/openadsdk/core/settings/WAv;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$9;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/HzH;)V

    const-string v3, "mediation_init_conf"

    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Gm;->Qhi(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/settings/WAv;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->MQ:Lcom/bytedance/sdk/openadsdk/core/settings/WAv;

    return-object v0
.end method

.method public EGK()Z
    .locals 3

    .line 1748
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/CJ/tP;->Qhi(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1753
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v2, "support_rtl"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;
    .locals 0

    .line 1298
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ac;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object p1

    return-object p1
.end method

.method public Eh()Ljava/lang/String;
    .locals 3

    .line 919
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "playableLoadH5Url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public FQ()Ljava/lang/String;
    .locals 3

    .line 1197
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "dyn_draw_engine_url"

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Tgh:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Gm()I
    .locals 3

    .line 748
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "load_callback_strategy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Gm(Ljava/lang/String;)I
    .locals 0

    .line 1064
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object p1

    .line 1065
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->zc:I

    return p1
.end method

.method public Gy()Z
    .locals 3

    .line 1970
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "perf_con_adlog_turn_off_retry_ad"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    return v2
.end method

.method public HLI()[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 1492
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->ROR:Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 1494
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v4, "gecko_hosts"

    invoke-virtual {v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1495
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    .line 1496
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1497
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->ROR:Ljava/util/Set;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1500
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->ROR:Ljava/util/Set;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->ROR:Ljava/util/Set;

    if-eqz v1, :cond_3

    .line 1501
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 1505
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->ROR:Ljava/util/Set;

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    :cond_3
    :goto_1
    return-object v0
.end method

.method public HUk()Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA;
    .locals 4

    .line 1993
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->fl:Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;

    const-string v3, "perf_con_track_url_strategy"

    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA;

    return-object v0
.end method

.method public HWc()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2003
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;

    const-string v3, "perf_con_drop2rt_skip_label_list"

    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public Hf()Z
    .locals 3

    .line 1420
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "global_rate"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public HzH()Z
    .locals 3

    .line 801
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "allow_blind_mode_request_ad"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public HzH(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1165
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->Sf(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 1168
    :cond_1
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object p1

    .line 1169
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->ABk:I

    if-ne p1, v0, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public IC()I
    .locals 3

    .line 861
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "bus_con_arbitrage_loading_timeout"

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Jma()Ljava/lang/String;
    .locals 3

    .line 1173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "ads_url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public MND()I
    .locals 3

    .line 1332
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "privacy_personalized_ad"

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    return v0

    .line 1338
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/js;->hpZ()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    return v1

    :cond_2
    return v2
.end method

.method public MQ()I
    .locals 3

    .line 869
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "loadedCallbackOpportunity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public MQ(Ljava/lang/String;)Z
    .locals 0

    .line 1247
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object p1

    .line 1248
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->qMt:Z

    return p1
.end method

.method public NBs()Z
    .locals 3

    .line 1424
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "read_video_from_cache"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public NFd()I
    .locals 3

    .line 933
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "fetch_tpl_second"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    return v2
.end method

.method public NFd(Ljava/lang/String;)I
    .locals 4

    .line 771
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Dww:Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;

    const-string v3, "perf_con_applog_rate"

    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/16 v1, 0x64

    if-eqz v0, :cond_0

    .line 773
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 774
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, v1, :cond_0

    .line 775
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public Oy()I
    .locals 3

    .line 831
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "bus_con_token_thread_count"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :cond_1
    :goto_0
    return v2
.end method

.method public PAe()Ljava/lang/String;
    .locals 3

    .line 1201
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "dc"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public PER()J
    .locals 4

    .line 1914
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "perf_con_adlog_expire_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Px()Z
    .locals 3

    .line 2060
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "bus_con_video_keep_screen_on"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Qe()Z
    .locals 3

    .line 1369
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "bus_con_sec_type"

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1370
    :goto_0
    const-string v1, "secSdk type: "

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    return v0
.end method

.method public Qhi(I)I
    .locals 0

    .line 1209
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object p1

    .line 1210
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->Jma:I

    return p1
.end method

.method public Qhi(Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 714
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object p1

    .line 715
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->tP:I

    return p1
.end method

.method public Qhi(Ljava/lang/String;Z)I
    .locals 2

    if-nez p1, :cond_0

    .line 1138
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->ac(Z)I

    move-result p1

    return p1

    .line 1139
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object p1

    .line 1140
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->CQU:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->CQU:I

    return p1

    :cond_1
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->ac(Z)I

    move-result p1

    return p1
.end method

.method public Qhi()V
    .locals 4

    .line 494
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/ac;->Qhi()V

    .line 495
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->ac()V

    .line 496
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->WAv:Lcom/bytedance/sdk/openadsdk/core/settings/Gm;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/Gm;->ac()V

    .line 497
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Gm:Lcom/bytedance/sdk/openadsdk/core/settings/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/Qhi;->ac()V

    .line 499
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    .line 502
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "shared_prefs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 508
    new-instance v2, Ljava/io/File;

    const-string v3, "tt_sdk_settings.xml"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 509
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 511
    const-string v2, ".xml"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 513
    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteSharedPreferences(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public Qhi(IZ)V
    .locals 10

    .line 1567
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->fl()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    if-eqz p2, :cond_0

    .line 1573
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->kYc:Z

    :cond_0
    return-void

    .line 1578
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ()Lcom/bytedance/sdk/openadsdk/core/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/hm;->CJ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 1584
    :cond_2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->kYc:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 1585
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->kYc:Z

    if-nez p2, :cond_3

    move p2, v2

    .line 1593
    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->yy()J

    move-result-wide v4

    .line 1594
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1595
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Ki()J

    move-result-wide v8

    sub-long/2addr v6, v4

    if-nez p2, :cond_4

    cmp-long v0, v6, v8

    if-gez v0, :cond_4

    .line 1601
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Tgh/Qhi;->Qhi()V

    return-void

    .line 1606
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/pA;->Qhi()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1607
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->cJ(IZ)V

    return-void

    .line 1611
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->ABk:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 1618
    :cond_6
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/settings/pA;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    new-array v0, v1, [Lcom/bytedance/sdk/openadsdk/core/settings/Tgh;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->WAv:Lcom/bytedance/sdk/openadsdk/core/settings/Gm;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Gm:Lcom/bytedance/sdk/openadsdk/core/settings/Qhi;

    aput-object v1, v0, v2

    invoke-direct {p1, p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/pA;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/pA$Qhi;Lcom/bytedance/sdk/openadsdk/core/settings/iMK;[Lcom/bytedance/sdk/openadsdk/core/settings/Tgh;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/lG;->cJ(Lcom/bytedance/sdk/component/Sf/hm;)V

    .line 1619
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->cJ()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->bxS:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public Qhi(J)V
    .locals 2

    .line 1534
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi()Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    move-result-object v0

    const-string v1, "last_req_time"

    invoke-interface {v0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;J)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi()V

    return-void
.end method

.method public Qhi(Landroid/content/Context;)V
    .locals 3

    .line 1644
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1645
    const-string v1, "_tryFetRemoDat"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1648
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    .line 1649
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->EBS:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 1651
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->EBS:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1654
    const-string v0, "TTAD.SdkSettings"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1657
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Dq()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 1658
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->CJ(I)V

    .line 1659
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->eG()V

    :cond_1
    return-void
.end method

.method public Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 687
    const-string v0, "dyn_draw_engine_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 689
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Tgh:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 691
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 693
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 694
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->cJ()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$8;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/HzH;Ljava/lang/String;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 707
    :cond_1
    invoke-interface {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    :cond_2
    :goto_0
    return-void
.end method

.method public Qhi(Z)V
    .locals 2

    .line 1632
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->ABk:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1633
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->eG()V

    if-eqz p1, :cond_0

    .line 1635
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->SNp()V

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;)Z
    .locals 2

    .line 1931
    sget-object v0, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->GET_ADS:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->BIDDING_TOKEN:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1933
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->APP_LOG:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    if-ne p1, v0, :cond_1

    .line 1934
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v0, "perf_con_crypt_V4_applog"

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 1936
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v0, "perf_con_crypt_V4"

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 1932
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v0, "perf_con_crypt_V4_get_ad"

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public ROR(Ljava/lang/String;)I
    .locals 0

    .line 1038
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object p1

    .line 1039
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->kYc:I

    return p1
.end method

.method public ROR()V
    .locals 2

    .line 683
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi()Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    move-result-object v0

    const-string v1, "tt_sdk_settings"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    move-result-object v0

    const-string v1, "ab_test_param"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi()V

    return-void
.end method

.method public ReL()V
    .locals 1

    const/4 v0, 0x1

    .line 1542
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->pA:Z

    return-void
.end method

.method public Ri()I
    .locals 3

    .line 1886
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "perf_con_thread_stack_size"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public SL()J
    .locals 5

    .line 819
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "bus_con_tnc_interval"

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    return-wide v0
.end method

.method public SO()Ljava/lang/String;
    .locals 3

    .line 1980
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "dual_event_url"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Sf()Z
    .locals 3

    .line 735
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "if_both_open"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    return v2
.end method

.method public Sf(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1044
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object p1

    .line 1045
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->iMK:I

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public TKG()I
    .locals 3

    .line 782
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "perf_con_drawable_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Tgh()J
    .locals 4

    .line 676
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "data_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Tgh(Ljava/lang/String;)Z
    .locals 1

    .line 1030
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object p1

    .line 1031
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->ROR:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public Ura()Z
    .locals 3

    .line 813
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "bus_con_adshow_check_enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public VV()Z
    .locals 3

    .line 1926
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "perf_con_is_new_net_thread"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    return v2
.end method

.method public VnT()Z
    .locals 3

    .line 1363
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "perf_con_apm_native"

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public WAv(Ljava/lang/String;)I
    .locals 0

    .line 1058
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object p1

    .line 1059
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->Gm:I

    return p1
.end method

.method public WAv()Ljava/lang/String;
    .locals 3

    .line 744
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "ab_test_version"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Wrw()Lorg/json/JSONObject;
    .locals 4

    .line 1959
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Eh:Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;

    const-string v3, "perf_con_thread_pool_config"

    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public XH()I
    .locals 3

    .line 1984
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "bus_con_auto_click_delay"

    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    return v2
.end method

.method public YB()Z
    .locals 3

    .line 1375
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "bus_con_dislike_report_raw"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aP()I
    .locals 3

    .line 923
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "fetch_tpl_timeout_ctrl"

    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    return v2
.end method

.method public aP(Ljava/lang/String;)Z
    .locals 4

    .line 1391
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;

    const-string v3, "privacy_fields_allowed"

    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1393
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1395
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/js;->hpZ()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v3

    .line 1401
    :cond_0
    const-string v0, "mcc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mnc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    return v1

    .line 1410
    :cond_3
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public ac(I)I
    .locals 0

    .line 1219
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object p1

    .line 1220
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->hm:I

    return p1
.end method

.method public ac()Ljava/lang/String;
    .locals 3

    .line 663
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "aes_key"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ac(Ljava/lang/String;)Z
    .locals 1

    .line 983
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object p1

    .line 984
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->ac:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bM()Ljava/lang/String;
    .locals 3

    .line 849
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "bus_con_check_clz"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bxS(Ljava/lang/String;)I
    .locals 0

    .line 1262
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object p1

    .line 1263
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->aP:I

    return p1
.end method

.method public bxS()Z
    .locals 3

    .line 894
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "landingpage_new_style"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public cJ(I)I
    .locals 0

    .line 1214
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object p1

    .line 1215
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->cJ:I

    return p1
.end method

.method public cJ(Ljava/lang/String;)I
    .locals 4

    .line 760
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->ac:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->CJ:Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;

    const-string v3, "perf_con_stats_rate"

    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/16 v1, 0x64

    if-eqz v0, :cond_0

    .line 762
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 763
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, v1, :cond_0

    .line 764
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public declared-synchronized cJ()V
    .locals 6

    monitor-enter p0

    .line 627
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 628
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->iMK:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 631
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->WAv:Lcom/bytedance/sdk/openadsdk/core/settings/Gm;

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->iMK:Z

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/settings/Gm;->Qhi(Z)V

    .line 633
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Gm:Lcom/bytedance/sdk/openadsdk/core/settings/Qhi;

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->iMK:Z

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/settings/Qhi;->Qhi(Z)V

    .line 635
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->iMK:Z

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Z)V

    .line 637
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ac;->Qhi(Z)V

    .line 639
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ()Lcom/bytedance/sdk/openadsdk/core/hm;

    move-result-object v4

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Ohm()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/hm;->CJ(I)V

    .line 641
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->iMK:Z

    .line 642
    const-string v3, "loadLocalData: finished, used"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "ms"

    filled-new-array {v3, v0, v1}, [Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 647
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->cJ()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$7;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/HzH;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;)V
    .locals 2

    .line 719
    const-string v0, "is_gdpr_user"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    .line 722
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, p1

    .line 726
    :goto_0
    const-string p1, "isGdprUser"

    invoke-interface {p2, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    return-void
.end method

.method public cJP()F
    .locals 3

    .line 865
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "bus_con_arbitrage_loading_alpha"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public cjC()Z
    .locals 3

    .line 1384
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "privacy_debug_unlock"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dI()I
    .locals 3

    .line 1433
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "perf_con_webview_cache_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    return v2

    :cond_0
    return v0
.end method

.method public dIT()Z
    .locals 8

    .line 1895
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Gm:Lcom/bytedance/sdk/openadsdk/core/settings/Qhi;

    const-string v1, "perf_con_apm"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Qhi;->Qhi(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v3, 0x1

    if-ltz v0, :cond_3

    if-lt v0, v2, :cond_1

    goto :goto_0

    .line 1905
    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    double-to-int v2, v4

    if-le v0, v2, :cond_2

    return v3

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v3
.end method

.method public dVA()I
    .locals 3

    .line 1442
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "perf_con_webview_cache_count_v3"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    return v2

    :cond_0
    return v0
.end method

.method eG()V
    .locals 4

    .line 1547
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/pA;->Qhi()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1550
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->cJ()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->bxS:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1552
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Ki()J

    move-result-wide v0

    .line 1553
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->cJ()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->bxS:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public es()Ljava/lang/String;
    .locals 3

    .line 1189
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "policy_url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public et()Z
    .locals 3

    .line 1975
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "perf_con_adlog_turn_off_retry_stats"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    return v2
.end method

.method public fl()Lorg/json/JSONObject;
    .locals 4

    .line 672
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const/4 v1, 0x0

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;

    const-string v3, "digest"

    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public fl(Ljava/lang/String;)Z
    .locals 3

    .line 1002
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object p1

    .line 1004
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->fl:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    return v2

    .line 1009
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/hpZ;->ac(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2

    .line 1006
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/hpZ;->CJ(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public gT()Z
    .locals 3

    .line 2055
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "bus_con_rewardedfull_link"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    return v2
.end method

.method public gga()I
    .locals 3

    .line 1764
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "bus_con_send_log_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public hm(Ljava/lang/String;)I
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0x5dc

    return p1

    .line 1053
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object p1

    .line 1054
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->hpZ:I

    return p1
.end method

.method public hm()Z
    .locals 3

    .line 739
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "support_tnc"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v2
.end method

.method public hpZ()I
    .locals 1

    .line 796
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->mz()Ljava/util/Set;

    .line 797
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->hpZ:I

    return v0
.end method

.method public hpZ(Ljava/lang/String;)Z
    .locals 0

    .line 1157
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object p1

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->EBS:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public iMK()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 786
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->mz()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public iMK(Ljava/lang/String;)Z
    .locals 1

    .line 1117
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->ABk(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ip()I
    .locals 3

    .line 1205
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "isGdprUser"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public jPH()Z
    .locals 4

    .line 1302
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "privacy_ad_enable"

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 1311
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/js;->hpZ()I

    move-result v0

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public js()Ljava/lang/String;
    .locals 3

    .line 1177
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "app_log_url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public kYc(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 1229
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "core_settings"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1231
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1232
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object p1

    .line 1233
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->dIT:Lorg/json/JSONObject;

    .line 1234
    const-string v0, "ad_slot_setting"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1236
    :goto_0
    const-string v0, "getCoreSettingJsonObj"

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "TTAD.SdkSettings"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v1

    :goto_1
    return-object v2
.end method

.method public kYc()Z
    .locals 3

    .line 805
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "support_gzip"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public lB()I
    .locals 3

    .line 976
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "disable_rotate_banner_on_dislike"

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public lG()Z
    .locals 1

    .line 1095
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->cJ()Z

    move-result v0

    return v0
.end method

.method public mZ()Z
    .locals 3

    .line 1920
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "perf_con_use_new_thread_pool"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    return v2
.end method

.method public oU()I
    .locals 3

    .line 1512
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "blank_detect_rate"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public ots()I
    .locals 3

    .line 1475
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "perf_con_webview_preload_cache_v3"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    return v1

    .line 1482
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->dVA()I

    move-result v1

    if-le v0, v1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public pA()I
    .locals 1

    .line 791
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->mz()Ljava/util/Set;

    .line 792
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->HzH:I

    return v0
.end method

.method public pA(Ljava/lang/String;)I
    .locals 0

    .line 1133
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object p1

    .line 1134
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->WAv:I

    return p1
.end method

.method public pF()Z
    .locals 3

    .line 853
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "bus_con_url_check"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pM()Lcom/bytedance/sdk/openadsdk/core/settings/Sf;
    .locals 4

    .line 910
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/settings/Sf;->Qhi:Lcom/bytedance/sdk/openadsdk/core/settings/Sf;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$10;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$10;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/HzH;)V

    const-string v3, "insert_js_config"

    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/settings/Sf;

    return-object v0
.end method

.method public pM(Ljava/lang/String;)Z
    .locals 1

    .line 1287
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object p1

    .line 1288
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->pA:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public pv()Lorg/json/JSONObject;
    .locals 4

    .line 1516
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const/4 v1, 0x0

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;

    const-string v3, "video_cache_config"

    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public qMt(Ljava/lang/String;)I
    .locals 0

    .line 1252
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object p1

    .line 1253
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->pM:I

    return p1
.end method

.method public qMt()Ljava/lang/String;
    .locals 3

    .line 873
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "ab_test_param"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rB()I
    .locals 3

    .line 845
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "bus_con_behavior_count"

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public sDy()V
    .locals 3

    .line 945
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->LcF()Ljava/lang/String;

    move-result-object v0

    .line 946
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 948
    const-string v1, "zh-Hant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 949
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    const-string v1, "zh"

    const-string v2, "tw"

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/component/utils/WAv;->Qhi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 951
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/component/utils/WAv;->Qhi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->Qhi()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 957
    const-string v1, "TTAD.SdkSettings"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public tP(Ljava/lang/String;)I
    .locals 0

    .line 1242
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object p1

    .line 1243
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->MQ:I

    return p1
.end method

.method public tP()Z
    .locals 3

    .line 809
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "ad_revenue_enable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public vml()Z
    .locals 3

    .line 857
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "bus_con_collect_arbitrage"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public wp()I
    .locals 3

    .line 1997
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "perf_con_close_button_delay_check_time"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public xyz()I
    .locals 3

    .line 1224
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "vbtt"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public yN()I
    .locals 3

    .line 1193
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "ivrv_downward"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public zc()I
    .locals 3

    .line 752
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "splash_video_load_strategy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public zc(Ljava/lang/String;)Z
    .locals 0

    .line 1070
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object p1

    .line 1071
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->bxS:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public zjb()I
    .locals 3

    .line 1455
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->zc:Lcom/bytedance/sdk/openadsdk/core/settings/iMK;

    const-string v1, "perf_con_webview_preload_cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    return v1

    .line 1462
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->dI()I

    move-result v1

    if-le v0, v1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public zn()Ljava/lang/String;
    .locals 3

    .line 1181
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Gm:Lcom/bytedance/sdk/openadsdk/core/settings/Qhi;

    const-string v1, "apm_url"

    const-string v2, "pangolin16.sgsnssdk.com"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
