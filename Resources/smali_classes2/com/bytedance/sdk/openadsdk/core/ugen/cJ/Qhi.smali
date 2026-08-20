.class public Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi;
.super Ljava/lang/Object;
.source "UGenEndCardRender.java"

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/core/iMK;
.implements Lcom/bytedance/adsdk/ugeno/core/pA;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi$Qhi;
    }
.end annotation


# instance fields
.field private CJ:Lcom/bytedance/adsdk/ugeno/core/pA;

.field private final Qhi:Landroid/content/Context;

.field private ac:Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi$Qhi;

.field private cJ:Lcom/bytedance/adsdk/ugeno/component/cJ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/ugeno/component/cJ<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi;->Qhi:Landroid/content/Context;

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/ROR;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi;->cJ(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/ROR;)V

    return-void
.end method

.method private cJ(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/ROR;)V
    .locals 3

    const/16 v0, 0xbb8

    .line 50
    :try_start_0
    new-instance v1, Lcom/bytedance/adsdk/ugeno/core/Gm;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi;->Qhi:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/bytedance/adsdk/ugeno/core/Gm;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {v1, p1}, Lcom/bytedance/adsdk/ugeno/core/Gm;->Qhi(Lorg/json/JSONObject;)Lcom/bytedance/adsdk/ugeno/component/cJ;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi;->cJ:Lcom/bytedance/adsdk/ugeno/component/cJ;

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    .line 54
    const-string p1, "ugen render fail"

    invoke-interface {p3, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/ROR;->Qhi(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 58
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/component/cJ;->hm()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 60
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi$2;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    :cond_2
    invoke-virtual {v1, p0}, Lcom/bytedance/adsdk/ugeno/core/Gm;->Qhi(Lcom/bytedance/adsdk/ugeno/core/iMK;)V

    .line 66
    invoke-virtual {v1, p0}, Lcom/bytedance/adsdk/ugeno/core/Gm;->Qhi(Lcom/bytedance/adsdk/ugeno/core/pA;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p2, :cond_3

    .line 69
    :try_start_1
    const-string p1, "language"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/zc;->Qhi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string p1, "os"

    const-string v2, "Android"

    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    :catch_0
    :cond_3
    :try_start_2
    invoke-virtual {v1, p2}, Lcom/bytedance/adsdk/ugeno/core/Gm;->cJ(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz p3, :cond_4

    .line 82
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi;->cJ:Lcom/bytedance/adsdk/ugeno/component/cJ;

    invoke-interface {p3, p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/ROR;->Qhi(Lcom/bytedance/adsdk/ugeno/component/cJ;)V

    :cond_4
    return-void

    :catch_1
    move-exception p1

    if-eqz p3, :cond_5

    .line 77
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "ugen render fail exception is"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/ROR;->Qhi(ILjava/lang/String;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/adsdk/ugeno/component/cJ;Landroid/view/MotionEvent;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi;->CJ:Lcom/bytedance/adsdk/ugeno/core/pA;

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0, p1, p2}, Lcom/bytedance/adsdk/ugeno/core/pA;->Qhi(Lcom/bytedance/adsdk/ugeno/component/cJ;Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/adsdk/ugeno/core/pA;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi;->CJ:Lcom/bytedance/adsdk/ugeno/core/pA;

    return-void
.end method

.method public Qhi(Lcom/bytedance/adsdk/ugeno/core/zc;Lcom/bytedance/adsdk/ugeno/core/iMK$cJ;Lcom/bytedance/adsdk/ugeno/core/iMK$Qhi;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/zc;->cJ()I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/zc;->cJ()I

    move-result p3

    const/4 v0, 0x4

    if-ne p3, v0, :cond_2

    .line 97
    :cond_1
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi$Qhi;

    if-eqz p3, :cond_2

    .line 98
    invoke-interface {p3, p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi$Qhi;->Qhi(Lcom/bytedance/adsdk/ugeno/core/zc;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 101
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/zc;->CJ()Lcom/bytedance/adsdk/ugeno/core/zc;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 102
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/zc;->CJ()Lcom/bytedance/adsdk/ugeno/core/zc;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/bytedance/adsdk/ugeno/core/iMK$cJ;->Qhi(Lcom/bytedance/adsdk/ugeno/core/zc;)V

    :cond_3
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi$Qhi;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi$Qhi;

    return-void
.end method

.method public Qhi(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/ROR;)V
    .locals 2

    .line 36
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi;->cJ(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/ROR;)V

    return-void

    .line 39
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/Qhi;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/ROR;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Ljava/lang/Runnable;)V

    return-void
.end method
