.class public Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;
.super Ljava/lang/Object;
.source "GPDownLoader.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;


# static fields
.field protected static fl:Ljava/lang/Boolean;


# instance fields
.field protected CJ:Z

.field protected Qhi:Lcom/bytedance/sdk/openadsdk/core/model/ac;

.field protected ROR:I

.field private final Sf:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected final Tgh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected ac:Ljava/lang/String;

.field protected cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field private hm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->CJ:Z

    .line 59
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->Tgh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->hm:Z

    .line 65
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->Sf:Ljava/lang/ref/WeakReference;

    .line 66
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 67
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/ac;

    .line 68
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->ac:Ljava/lang/String;

    .line 69
    const-string p2, "====tag==="

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    .line 71
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    .line 72
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/HzH;->cJ(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private Qhi(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->nR()I

    move-result v0

    if-nez v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->CJ()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "auto_click"

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->nR()I

    move-result v0

    if-nez v0, :cond_3

    .line 277
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->ROR:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "dpl_probability_jump"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_3
    const-string v0, "can_query_install"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static Qhi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z
    .locals 9

    .line 102
    const-string v0, "com.android.vending"

    .line 103
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "_landingpage"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    const-string v2, ""

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 109
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "store_open"

    const/high16 v5, 0x10000000

    const-string v6, "android.intent.action.VIEW"

    if-nez v1, :cond_1

    .line 111
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v1, v6, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 112
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 117
    invoke-static {p4, p3, v4, v3}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    :cond_1
    const/4 p1, 0x0

    if-eqz p0, :cond_6

    if-eqz p2, :cond_6

    .line 123
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 128
    :cond_2
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    const-string v7, "market://details?id="

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 130
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/high16 v8, 0x10000

    invoke-virtual {v7, v1, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 134
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 135
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 141
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 143
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    instance-of p2, p0, Landroid/app/Activity;

    if-nez p2, :cond_4

    .line 145
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 147
    :cond_4
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 149
    invoke-static {p4, p3, v4, v3}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v2

    :cond_5
    return p1

    :catchall_1
    move-exception p0

    .line 155
    const-string p2, "gotoGooglePlayByPackageNameAndUrl error"

    const-string p3, "gotoGooglePlay"

    invoke-static {p2, p3, p0}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    return p1
.end method


# virtual methods
.method public CJ()V
    .locals 8

    .line 169
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->ac()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->cJ()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->Tgh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 175
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac(Z)V

    return-void

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->Qhi()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac(Z)V

    return-void

    .line 184
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->Tgh()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 188
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->fl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 189
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac(Z)V

    return-void

    .line 194
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->YB()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 195
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->ac()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->YB()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->ac:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->ac:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;ILjava/lang/String;Z)Z

    .line 196
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac(Z)V

    :cond_5
    return-void
.end method

.method public Qhi(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->ROR:I

    return-void
.end method

.method public Qhi(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->hm:Z

    return-void
.end method

.method public Qhi()Z
    .locals 6

    .line 295
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/ac;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->XH()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->ac()Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->ac()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/js;->cJ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 303
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->ac()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 307
    :cond_2
    const-string v2, "START_ONLY_FOR_ANDROID"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 309
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->ac()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 311
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 312
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->Qhi(Ljava/util/Map;)V

    .line 313
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->ac:Ljava/lang/String;

    const-string v5, "click_open"

    invoke-static {v2, v4, v5, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    move-exception v0

    .line 316
    const-string v2, "GPDownLoader"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v1
.end method

.method public Qhi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->ac:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1, p2, p3, v0, v1}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->Qhi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    return p1
.end method

.method public Tgh()Z
    .locals 5

    const/4 v0, 0x0

    .line 328
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v1, :cond_1

    .line 329
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->NLs()Lcom/bytedance/sdk/openadsdk/core/model/EBS;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 330
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/EBS;->cJ()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 331
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/EBS;->Qhi()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->ac()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->ac()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 334
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->ac()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->ac()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/EBS;->cJ()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v2, v1, v3}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/cJ;->Qhi(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    .line 338
    new-instance v2, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac$1;

    const-string v3, "task_oem_store"

    invoke-direct {v2, p0, v3, v1}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac$1;-><init>(Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;Ljava/lang/String;Z)V

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/lG;->cJ(Lcom/bytedance/sdk/component/Sf/hm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :cond_1
    return v0

    :catchall_0
    move-exception v1

    .line 354
    const-string v2, "GPDownLoader"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method protected ac()Landroid/content/Context;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->Sf:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->Sf:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public cJ()Z
    .locals 9

    .line 202
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->ac:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 204
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ReL()Lcom/bytedance/sdk/openadsdk/core/model/zc;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 205
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ReL()Lcom/bytedance/sdk/openadsdk/core/model/zc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/zc;->Qhi()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 207
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 208
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->ac()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/js;->cJ(Landroid/content/Context;Landroid/content/Intent;)Lcom/bytedance/sdk/openadsdk/utils/js$cJ;

    move-result-object v1

    .line 212
    iget v4, v1, Lcom/bytedance/sdk/openadsdk/utils/js$cJ;->cJ:I

    const-string v5, "can_query_install"

    const-string v6, "intent"

    if-lez v4, :cond_2

    .line 213
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->ac()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-nez v4, :cond_0

    const/high16 v4, 0x10000000

    .line 214
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 217
    :cond_0
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 218
    invoke-direct {p0, v4}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->Qhi(Ljava/util/Map;)V

    .line 219
    const-string v7, "matched_count"

    iget v8, v1, Lcom/bytedance/sdk/openadsdk/utils/js$cJ;->cJ:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v7, "url"

    invoke-interface {v4, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/utils/js$cJ;->Qhi:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/utils/js$cJ;->Qhi:Landroid/content/ComponentName;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->ac:Ljava/lang/String;

    const-string v7, "open_url_app"

    invoke-static {v0, v1, v7, v4}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 225
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->ac()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 226
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/cJ/ABk;->Qhi()Lcom/bytedance/sdk/openadsdk/cJ/ABk;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/cJ/ABk;->Qhi(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/cJ/ABk;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1, v7}, Lcom/bytedance/sdk/openadsdk/cJ/ABk;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V

    .line 227
    const-string v0, "dp_start_act_success"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->ac:Ljava/lang/String;

    invoke-static {v0, v1, v7, v4}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception v0

    .line 230
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 232
    :try_start_1
    const-string v4, "exception"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 240
    :catch_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->ac:Ljava/lang/String;

    const/4 v4, -0x4

    invoke-static {v0, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/core/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILorg/json/JSONObject;)V

    goto :goto_0

    .line 244
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 246
    :try_start_2
    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 253
    :catch_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->ac:Ljava/lang/String;

    const/4 v4, -0x3

    invoke-static {v1, v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/core/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILorg/json/JSONObject;)V

    goto :goto_0

    .line 257
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->ac:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ReL()Lcom/bytedance/sdk/openadsdk/core/model/zc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/zc;->CJ()Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, -0x2

    invoke-static {v0, v1, v4, v3}, Lcom/bytedance/sdk/openadsdk/core/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 260
    :goto_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->CJ:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->Tgh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 261
    :cond_4
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->CJ:Z

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 263
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->Qhi(Ljava/util/Map;)V

    .line 264
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->ac:Ljava/lang/String;

    const-string v3, "open_fallback_url"

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 267
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->ac:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILorg/json/JSONObject;)V

    :cond_6
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public fl()Z
    .locals 4

    .line 289
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->Tgh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 290
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/ac;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->ac()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/ac;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->Qhi()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/ac;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->ac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->Qhi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
