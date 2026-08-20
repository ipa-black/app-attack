.class public Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;
.super Lcom/bytedance/sdk/component/widget/SSWebView$Qhi;
.source "TTWebViewClient.java"


# static fields
.field private static final hpZ:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ABk:Lcom/bytedance/sdk/openadsdk/common/cJ;

.field protected final CJ:Landroid/content/Context;

.field private Gm:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Qhi:Z

.field protected ROR:Z

.field protected Sf:Z

.field protected Tgh:Lcom/bytedance/sdk/openadsdk/cJ/zc;

.field private WAv:Lcom/bytedance/sdk/openadsdk/core/model/Gm;

.field protected final ac:Lcom/bytedance/sdk/openadsdk/core/NFd;

.field private cJ:Ljava/lang/String;

.field protected final fl:Ljava/lang/String;

.field protected hm:Z

.field private iMK:Lorg/json/JSONObject;

.field private pA:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field private zc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 385
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 387
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->hpZ:Ljava/util/HashSet;

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 388
    const-string v1, "ico"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 389
    const-string v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 390
    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 391
    const-string v1, "svg"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 392
    const-string v1, "jpeg"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/NFd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/cJ/zc;Z)V
    .locals 1

    .line 117
    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/SSWebView$Qhi;-><init>()V

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->ROR:Z

    .line 58
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->Sf:Z

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->hm:Z

    .line 118
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->CJ:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/core/NFd;

    .line 120
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->fl:Ljava/lang/String;

    .line 121
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->Tgh:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    .line 122
    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->Qhi:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/NFd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/common/cJ;Lcom/bytedance/sdk/openadsdk/cJ/zc;Z)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move v5, p6

    .line 112
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/NFd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/cJ/zc;Z)V

    .line 113
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->ABk:Lcom/bytedance/sdk/openadsdk/common/cJ;

    return-void
.end method

.method protected static CJ(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x2e

    .line 404
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_3

    .line 405
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 408
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    .line 412
    :cond_2
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->hpZ:Ljava/util/HashSet;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 413
    const-string v0, "image/"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private Qhi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 193
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->fl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "market"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/Gm;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->iMK:Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    .line 194
    :cond_1
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->cJ(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 195
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->cJ()V

    :cond_2
    const/4 p1, 0x0

    .line 198
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/Gm;

    .line 199
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->iMK:Lorg/json/JSONObject;

    return-void
.end method

.method private fl(Ljava/lang/String;)Z
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->pA:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->pA:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->yy()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Gm;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/Gm;

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->pA:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->cJ:Ljava/lang/String;

    return-void
.end method

.method public Qhi(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->Gm:Ljava/util/Map;

    return-void
.end method

.method public Qhi(Lorg/json/JSONObject;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->iMK:Lorg/json/JSONObject;

    return-void
.end method

.method public ac(Ljava/lang/String;)Z
    .locals 4

    .line 355
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 359
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 361
    const-string v0, "play.google.com"

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 362
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->pA:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->iMK:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/Gm;

    if-nez v0, :cond_1

    return v2

    .line 365
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->CJ:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-nez v3, :cond_2

    const/high16 v3, 0x10000000

    .line 367
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 369
    :cond_2
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 370
    const-string p1, "com.android.vending"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->CJ:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 372
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->cJ()V

    const/4 p1, 0x0

    .line 373
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->iMK:Lorg/json/JSONObject;

    .line 374
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/Gm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    :cond_3
    return v1
.end method

.method public cJ()V
    .locals 8

    .line 226
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->cJ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->pA:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Tgh(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->zc:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->WAv:Lcom/bytedance/sdk/openadsdk/core/model/Gm;

    const/4 v0, 0x1

    if-eqz v3, :cond_1

    .line 230
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->pA:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->cJ:Ljava/lang/String;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->Gm:Ljava/util/Map;

    const/4 v7, 0x1

    const-string v1, "click"

    const/4 v5, 0x1

    invoke-static/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/model/Gm;Ljava/lang/String;ZLjava/util/Map;I)V

    .line 232
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->zc:Z

    return-void

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->iMK:Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    .line 234
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->pA:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->cJ:Ljava/lang/String;

    const-string v4, "click"

    invoke-static {v2, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 235
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->zc:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public cJ(Ljava/lang/String;)Z
    .locals 7

    .line 203
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->CJ:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->pA:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->pA:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->ac()Ljava/lang/String;

    move-result-object v0

    .line 210
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->pA:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->Qhi()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 212
    :cond_1
    const-string v0, ""

    move-object v2, v0

    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->CJ:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->cJ:Ljava/lang/String;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->pA:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v6, 0x0

    invoke-static {p1, v3, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/Qhi;->Qhi(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->pA:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->CJ:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->cJ:Ljava/lang/String;

    .line 213
    invoke-static {p1, v0, v3, v4, v6}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->CJ:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->cJ:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->pA:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 214
    invoke-static {p1, v2, v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->Qhi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 148
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/component/widget/SSWebView$Qhi;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->Tgh:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    if-eqz v0, :cond_0

    .line 245
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->Qhi:Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->ABk:Lcom/bytedance/sdk/openadsdk/common/cJ;

    if-eqz v0, :cond_1

    .line 248
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->Qhi:Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/common/cJ;->cJ(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 250
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/component/widget/SSWebView$Qhi;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 255
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/widget/SSWebView$Qhi;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 256
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->Tgh:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    if-eqz v0, :cond_0

    .line 257
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->Qhi:Z

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 259
    :cond_0
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->ABk:Lcom/bytedance/sdk/openadsdk/common/cJ;

    if-eqz p3, :cond_1

    .line 260
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->Qhi:Z

    invoke-virtual {p3, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/common/cJ;->ac(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 263
    :cond_1
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->Sf:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iget-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->hm:Z

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string v0, "mNeedHardwareAcceleration:"

    const-string v1, "hasSetHardwareAccelerate"

    filled-new-array {v0, p2, v1, p3}, [Ljava/lang/Object;

    .line 264
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->Sf:Z

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->hm:Z

    if-nez p2, :cond_2

    const/4 p2, 0x1

    .line 267
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->hm:Z

    .line 268
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->CJ:Landroid/content/Context;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ac;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ac;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ac;->Qhi(Z)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ac;

    move-result-object p2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p3

    invoke-virtual {p3}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ac;->cJ(Z)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ac;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ac;->Qhi(Landroid/webkit/WebView;)V

    :cond_2
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 274
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/component/widget/SSWebView$Qhi;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 9

    .line 287
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/widget/SSWebView$Qhi;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 291
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->Tgh:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 292
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    .line 293
    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, v1

    .line 294
    :goto_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    .line 296
    const-string v2, "accept"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 297
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :cond_1
    move-object v7, v1

    if-eqz p2, :cond_2

    .line 301
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    move v8, p2

    .line 302
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->Tgh:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v4

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 9

    .line 309
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/widget/SSWebView$Qhi;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 311
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->Tgh:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 312
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    .line 313
    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, v1

    .line 314
    :goto_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    .line 316
    const-string v2, "accept"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 317
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :cond_1
    move-object v7, v1

    if-eqz p2, :cond_2

    .line 321
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    move v8, p2

    .line 322
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->Tgh:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v4

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 9

    if-eqz p2, :cond_0

    .line 332
    :try_start_0
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :catchall_0
    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->Tgh:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 342
    const-string v0, "SslError: unknown"

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 343
    :try_start_1
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result p2

    .line 344
    const-string v2, "SslError: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, p3

    :catchall_1
    :cond_1
    move v4, p2

    move-object v5, v0

    move-object v6, v1

    .line 349
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->Tgh:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->CJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1

    .line 422
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/fl/Tgh;->Qhi()Lcom/bytedance/sdk/component/adexpress/fl/Tgh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/fl/Tgh;->cJ()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :catch_0
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/component/widget/SSWebView$Qhi;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p1

    return p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 132
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/component/widget/SSWebView$Qhi;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->Tgh:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    if-eqz v0, :cond_0

    .line 138
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->Qhi:Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->cJ(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->ABk:Lcom/bytedance/sdk/openadsdk/common/cJ;

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/common/cJ;->Qhi(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 143
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/component/widget/SSWebView$Qhi;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->Tgh:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    if-eqz v0, :cond_0

    .line 155
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->Qhi:Z

    invoke-virtual {v0, p2, v1}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Ljava/lang/String;Z)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->ABk:Lcom/bytedance/sdk/openadsdk/common/cJ;

    if-eqz v0, :cond_1

    .line 158
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->Qhi:Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/common/cJ;->Qhi(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    :cond_1
    const/4 v0, 0x1

    .line 162
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 164
    const-string v3, "bytedance"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 165
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/HzH;->Qhi(Landroid/net/Uri;Lcom/bytedance/sdk/openadsdk/core/NFd;)V

    return v0

    .line 167
    :cond_2
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->ac(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v0

    .line 169
    :cond_3
    invoke-static {p2}, Lcom/bytedance/sdk/component/utils/hpZ;->Qhi(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 170
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->pA:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 171
    invoke-direct {p0, v2, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return v0

    .line 175
    :cond_4
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 177
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 178
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->CJ:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return v0

    .line 185
    :catchall_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/core/NFd;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->CJ()Z

    move-result v1

    if-eqz v1, :cond_5

    return v0

    .line 189
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/component/widget/SSWebView$Qhi;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
