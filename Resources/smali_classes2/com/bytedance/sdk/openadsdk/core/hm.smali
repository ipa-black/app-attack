.class public Lcom/bytedance/sdk/openadsdk/core/hm;
.super Ljava/lang/Object;
.source "GlobalInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/hm$Qhi;
    }
.end annotation


# static fields
.field public static Qhi:Lcom/bytedance/sdk/openadsdk/core/ABk; = null

.field public static final cJ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static kYc:Z = false


# instance fields
.field private ABk:Z

.field private CJ:Ljava/lang/String;

.field private EBS:Lcom/bytedance/sdk/openadsdk/core/video/cJ/ac;

.field private Gm:I

.field private HzH:Ljava/lang/Integer;

.field private MQ:Z

.field private ROR:I

.field private Sf:Z

.field private Tgh:Ljava/lang/String;

.field private WAv:Ljava/lang/String;

.field private ac:Z

.field private volatile bxS:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;",
            ">;"
        }
    .end annotation
.end field

.field private fl:Ljava/lang/String;

.field private hm:Ljava/lang/String;

.field private hpZ:Ljava/lang/Integer;

.field private iMK:Landroid/graphics/Bitmap;

.field private pA:Ljava/lang/Integer;

.field private qMt:Ljava/lang/String;

.field private tP:I

.field private zc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 149
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/hm$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/hm$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->ac:Z

    .line 133
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->Gm:I

    const/4 v1, 0x1

    .line 135
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->zc:Z

    .line 137
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->ABk:Z

    const/4 v1, 0x0

    .line 139
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->iMK:Landroid/graphics/Bitmap;

    .line 141
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->pA:Ljava/lang/Integer;

    .line 142
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->hpZ:Ljava/lang/Integer;

    .line 143
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->HzH:Ljava/lang/Integer;

    .line 147
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->tP:I

    .line 749
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->bxS:Ljava/util/concurrent/ConcurrentHashMap;

    .line 170
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/api/Tgh/Qhi;->Qhi(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/hm$1;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/hm;-><init>()V

    return-void
.end method

.method public static CJ(Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 681
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 685
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/hm;->WAv(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 689
    :cond_1
    const-string v0, "time"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 690
    const-string v0, "value"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 691
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 693
    const-string v0, "TTAD.GlobalInfo"

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static EBS()Z
    .locals 1

    .line 815
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/hm;->kYc:Z

    return v0
.end method

.method private Qhi(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 250
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 252
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public static Qhi(Ljava/lang/String;J)Ljava/lang/String;
    .locals 6

    .line 650
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 654
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/hm;->WAv(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 659
    :cond_1
    const-string v0, "time"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 660
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long p1, v4, p1

    if-gtz p1, :cond_2

    .line 661
    const-string p1, "value"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 668
    const-string p1, "TTAD.GlobalInfo"

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/core/ABk;)V
    .locals 0

    .line 76
    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ABk;

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/hm;Ljava/lang/Integer;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/hm;->Qhi(Ljava/lang/Integer;I)V

    return-void
.end method

.method private Qhi(Ljava/lang/Integer;I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 301
    const-string v2, "sdk_coppa"

    const-string v3, "sp_global_privacy"

    if-nez p1, :cond_1

    const/4 p1, -0x1

    .line 302
    invoke-static {v3, v2, p1}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    if-eq p1, p2, :cond_0

    .line 304
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v3, v2, p1}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 305
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Qhi(IZ)V

    :cond_0
    return-void

    .line 308
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v3, v2, p1}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 309
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Qhi(IZ)V

    return-void
.end method

.method public static Qhi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 627
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 631
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 632
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 633
    const-string p1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 634
    const-string p1, "sp_global_file"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 637
    const-string p1, "TTAD.GlobalInfo"

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static ROR(Ljava/lang/String;)Z
    .locals 1

    .line 826
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/Dww;->Qhi:Z

    if-eqz v0, :cond_1

    const-string v0, "sp_full_screen_video"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "sp_reward_video"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "tt_openad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pag_sp_bad_par"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static Sf(Ljava/lang/String;)V
    .locals 2

    .line 478
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, "appid cannot be empty"

    if-eqz p0, :cond_0

    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ABk;

    if-eqz p0, :cond_0

    const/16 v1, 0xfa0

    .line 479
    invoke-interface {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ABk;->fail(ILjava/lang/String;)V

    .line 481
    :cond_0
    const-string p0, "TTAD.GlobalInfo"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static WAv(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 613
    const-string v0, "sp_global_file"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->cJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 614
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 618
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 621
    const-string v0, "TTAD.GlobalInfo"

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/core/hm;Ljava/lang/Integer;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/hm;->ac(Ljava/lang/Integer;I)V

    return-void
.end method

.method private ac(Ljava/lang/Integer;I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x5

    .line 726
    const-string v2, "global_ccpa"

    const-string v3, "sp_global_privacy"

    if-nez p1, :cond_1

    const/4 p1, -0x1

    .line 727
    invoke-static {v3, v2, p1}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    if-eq p1, p2, :cond_0

    .line 729
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v3, v2, p1}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 730
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Qhi(IZ)V

    :cond_0
    return-void

    .line 733
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v3, v2, p1}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 734
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Qhi(IZ)V

    return-void
.end method

.method public static bxS()V
    .locals 2

    .line 819
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    const-string v0, "MI 6"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 820
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/hm;->kYc:Z

    :cond_0
    return-void
.end method

.method public static cJ()Lcom/bytedance/sdk/openadsdk/core/hm;
    .locals 1

    .line 181
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm$Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/hm;

    move-result-object v0

    return-object v0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/hm;Ljava/lang/Integer;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ(Ljava/lang/Integer;I)V

    return-void
.end method

.method private cJ(Ljava/lang/Integer;I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 353
    const-string v2, "tt_gdpr"

    const-string v3, "sp_global_privacy"

    if-nez p1, :cond_1

    const/4 p1, -0x1

    .line 354
    invoke-static {v3, v2, p1}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    if-eq p1, p2, :cond_0

    .line 356
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v3, v2, p1}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 357
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Qhi(IZ)V

    :cond_0
    return-void

    .line 360
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v3, v2, p1}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 361
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Qhi(IZ)V

    return-void
.end method

.method private static hm(Ljava/lang/String;)V
    .locals 2

    .line 504
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 505
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x3e8

    if-le p0, v0, :cond_1

    .line 506
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ABk;

    const-string v0, "Data is very long, the longest is 1000"

    if-eqz p0, :cond_0

    const/16 v1, 0xfa0

    .line 507
    invoke-interface {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ABk;->fail(ILjava/lang/String;)V

    .line 509
    :cond_0
    const-string p0, "TTAD.GlobalInfo"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public ABk()Ljava/lang/String;
    .locals 3

    .line 422
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/cJ;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    const-string v0, "extra_data"

    const/4 v1, 0x0

    const-string v2, "sp_global_file"

    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->cJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->WAv:Ljava/lang/String;

    return-object v0
.end method

.method public CJ()Ljava/lang/String;
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->CJ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "app_id"

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/hm;->Qhi(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->CJ:Ljava/lang/String;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->CJ:Ljava/lang/String;

    return-object v0
.end method

.method public CJ(I)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/16 p1, -0x63

    .line 372
    :cond_0
    const-string v0, "global_coppa"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sp_global_privacy"

    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 373
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->tP:I

    return-void
.end method

.method public Gm()Z
    .locals 3

    .line 391
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/cJ;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    const-string v0, "is_paid"

    const/4 v1, 0x0

    const-string v2, "sp_global_file"

    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 394
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->Sf:Z

    return v0
.end method

.method public HzH()Z
    .locals 2

    .line 585
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ:Ljava/util/Set;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->CJ:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public MQ()I
    .locals 3

    .line 700
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->HzH:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 701
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 703
    :cond_0
    const-string v0, "global_ccpa"

    const/4 v1, -0x1

    const-string v2, "sp_global_privacy"

    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Qhi(I)V
    .locals 3

    .line 265
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/cJ;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    const-string v0, "icon_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sp_global_icon_id"

    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 268
    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->ROR:I

    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 1

    .line 208
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/hm;->Sf(Ljava/lang/String;)V

    .line 209
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->CJ:Ljava/lang/String;

    .line 210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    const-string v0, "app_id"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/hm;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->CJ(I)V

    :cond_0
    return-void
.end method

.method public Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;)V
    .locals 2

    .line 759
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    .line 760
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/cJ;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    .line 761
    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->Qhi(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;)V

    return-void

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->bxS:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_2

    .line 764
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/hm;

    monitor-enter v0

    .line 765
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->bxS:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_1

    .line 766
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->bxS:Ljava/util/concurrent/ConcurrentHashMap;

    .line 768
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 770
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->bxS:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_3

    .line 771
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->bxS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public Qhi(Z)V
    .locals 0

    .line 162
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->MQ:Z

    return-void
.end method

.method public Qhi()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->MQ:Z

    return v0
.end method

.method public ROR()I
    .locals 3

    .line 272
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/cJ;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    const-string v0, "icon_id"

    const/4 v1, 0x0

    const-string v2, "sp_global_icon_id"

    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 275
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->ROR:I

    return v0
.end method

.method public Sf()I
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->pA:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 316
    :cond_0
    const-string v0, "sdk_coppa"

    const/4 v1, -0x1

    const-string v2, "sp_global_privacy"

    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Tgh()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->Tgh:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/hm;->Qhi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->Tgh:Ljava/lang/String;

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->Tgh:Ljava/lang/String;

    return-object v0
.end method

.method public Tgh(I)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->HzH:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 709
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_1

    return-void

    .line 712
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->HzH:Ljava/lang/Integer;

    .line 713
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->fl()Z

    move-result v1

    if-nez v1, :cond_2

    .line 714
    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/hm;->ac(Ljava/lang/Integer;I)V

    return-void

    .line 716
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->cJ()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/hm$5;

    invoke-direct {v2, p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/hm$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/hm;Ljava/lang/Integer;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public Tgh(Ljava/lang/String;)V
    .locals 1

    .line 781
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 782
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/cJ;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    .line 783
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->Qhi(ILjava/lang/String;)V

    return-void

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->bxS:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    .line 786
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->bxS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public WAv()I
    .locals 3

    .line 379
    const-string v0, "sp_global_privacy"

    const-string v1, "global_coppa"

    const/16 v2, -0x63

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->tP:I

    if-ne v0, v2, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/hm;->Sf()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->tP:I

    .line 387
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->tP:I

    return v0
.end method

.method public ac(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->hpZ:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 334
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_3

    return-void

    .line 337
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->hpZ:Ljava/lang/Integer;

    .line 338
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->fl()Z

    move-result v1

    if-nez v1, :cond_4

    .line 339
    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ(Ljava/lang/Integer;I)V

    return-void

    .line 342
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->cJ()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/hm$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/hm$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/hm;Ljava/lang/Integer;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method

.method public ac(Ljava/lang/String;)V
    .locals 2

    .line 429
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/hm;->hm(Ljava/lang/String;)V

    .line 430
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->fl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->cJ()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/hm$4;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/hm$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/hm;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 440
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/cJ;->ac()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    const-string v0, "sp_global_file"

    const-string v1, "extra_data"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->WAv:Ljava/lang/String;

    return-void
.end method

.method public ac(Z)V
    .locals 0

    .line 811
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->ac:Z

    return-void
.end method

.method public ac()Z
    .locals 3

    .line 189
    const-string v0, "sdk_activate_init"

    const/4 v1, 0x1

    const-string v2, "sp_global_file"

    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public cJ(I)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->pA:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 283
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_1

    return-void

    .line 286
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->pA:Ljava/lang/Integer;

    .line 287
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->fl()Z

    move-result v1

    if-nez v1, :cond_2

    .line 288
    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/hm;->Qhi(Ljava/lang/Integer;I)V

    return-void

    .line 290
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->cJ()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/hm$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/hm$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/hm;Ljava/lang/Integer;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public cJ(Ljava/lang/String;)V
    .locals 1

    .line 230
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->fl:Ljava/lang/String;

    .line 231
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    const-string v0, "mediation_info"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/hm;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public cJ(Z)V
    .locals 2

    .line 193
    const-string v0, "sdk_activate_init"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "sp_global_file"

    invoke-static {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public fl(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->bxS:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 753
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->bxS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public fl()Ljava/lang/String;
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->fl:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 222
    :cond_0
    const-string v0, "mediation_info"

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/hm;->Qhi(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->fl:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 224
    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->fl:Ljava/lang/String;

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->fl:Ljava/lang/String;

    return-object v0
.end method

.method public fl(I)V
    .locals 3

    .line 448
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/cJ;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    const-string v0, "title_bar_theme"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sp_global_file"

    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 451
    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->Gm:I

    return-void
.end method

.method public hm()I
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->hpZ:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 323
    :cond_0
    const-string v0, "tt_gdpr"

    const/4 v1, -0x1

    const-string v2, "sp_global_privacy"

    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public hpZ()Landroid/graphics/Bitmap;
    .locals 3

    .line 533
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/cJ;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    const-string v0, "pause_icon"

    const/4 v1, 0x0

    const-string v2, "sp_global_file"

    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->cJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 535
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/fl;->Qhi(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->iMK:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public iMK()Lcom/bytedance/sdk/openadsdk/core/video/cJ/ac;
    .locals 3

    .line 522
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->EBS:Lcom/bytedance/sdk/openadsdk/core/video/cJ/ac;

    if-nez v0, :cond_0

    .line 523
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/cJ/ac;

    const/16 v1, 0xa

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/ac;-><init>(II)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->EBS:Lcom/bytedance/sdk/openadsdk/core/video/cJ/ac;

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->EBS:Lcom/bytedance/sdk/openadsdk/core/video/cJ/ac;

    return-object v0
.end method

.method public kYc()Z
    .locals 2

    .line 589
    const-string v0, "com.union_test.internationad"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/js;->fl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public pA()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public qMt()V
    .locals 2

    .line 797
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->bxS:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->bxS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 798
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->bxS:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 801
    const-string v1, "removeClickCloseListenerObj()"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    return-void
.end method

.method public tP()Ljava/lang/String;
    .locals 2

    .line 594
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->qMt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->qMt:Ljava/lang/String;

    return-object v0

    .line 598
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/WAv;->Qhi()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->qMt:Ljava/lang/String;

    .line 599
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->qMt:Ljava/lang/String;

    return-object v0

    .line 603
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 604
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/WAv;->Qhi(Ljava/lang/String;)V

    .line 605
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->qMt:Ljava/lang/String;

    return-object v0
.end method

.method public zc()Ljava/lang/String;
    .locals 3

    .line 406
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/cJ;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    const-string v0, "keywords"

    const/4 v1, 0x0

    const-string v2, "sp_global_file"

    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->cJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm;->hm:Ljava/lang/String;

    return-object v0
.end method
