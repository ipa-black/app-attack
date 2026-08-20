.class public final Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;
.super Ljava/lang/Object;
.source "PAGConfig.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/InitConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;
    }
.end annotation


# static fields
.field private static Gm:Ljava/lang/String;


# instance fields
.field private CJ:I

.field private Qhi:Ljava/lang/String;

.field private ROR:I

.field private Sf:Z

.field private Tgh:I

.field private WAv:Ljava/lang/String;

.field private ac:I

.field private cJ:Z

.field private fl:I

.field private hm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->CJ:I

    .line 46
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->fl:I

    .line 52
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->Tgh:I

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->ROR:I

    return-void
.end method

.method private CJ(I)V
    .locals 2

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    :cond_0
    move p1, v0

    .line 134
    :cond_1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->Tgh:I

    return-void
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->ac(I)V

    return-void
.end method

.method private Qhi(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->ac:I

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->cJ(I)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->cJ(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->cJ(Z)V

    return-void
.end method

.method private Qhi(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->WAv:Ljava/lang/String;

    return-void
.end method

.method private Qhi(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->cJ:Z

    return-void
.end method

.method private ac(I)V
    .locals 2

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    :cond_0
    move p1, v0

    .line 122
    :cond_1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->fl:I

    return-void
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->fl(I)V

    return-void
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->Qhi(Ljava/lang/String;)V

    return-void
.end method

.method private ac(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->hm:Ljava/lang/String;

    return-void
.end method

.method private cJ(I)V
    .locals 2

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    :cond_0
    move p1, v0

    .line 110
    :cond_1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->CJ:I

    return-void
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->Qhi(I)V

    return-void
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->ac(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->Qhi(Z)V

    return-void
.end method

.method private cJ(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->Qhi:Ljava/lang/String;

    return-void
.end method

.method private cJ(Z)V
    .locals 0

    .line 163
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->Sf:Z

    .line 164
    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/api/ac;->Qhi(Z)V

    return-void
.end method

.method public static debugLog(Z)V
    .locals 1

    .line 240
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Eh;->Qhi()Lcom/bytedance/sdk/openadsdk/core/pM;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    .line 242
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Eh;->Qhi()Lcom/bytedance/sdk/openadsdk/core/pM;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/pM;->fl(I)Lcom/bytedance/sdk/openadsdk/core/pM;

    .line 243
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Eh;->Qhi()Lcom/bytedance/sdk/openadsdk/core/pM;

    move-result-object p0

    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/core/pM;->Qhi()Lcom/bytedance/sdk/openadsdk/core/pM;

    return-void

    .line 245
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Eh;->Qhi()Lcom/bytedance/sdk/openadsdk/core/pM;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/pM;->fl(I)Lcom/bytedance/sdk/openadsdk/core/pM;

    .line 246
    sget-object p0, Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;->CJ:Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;

    invoke-static {p0}, Lcom/bytedance/sdk/component/ROR/CJ/Sf;->Qhi(Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;)V

    .line 247
    invoke-static {}, Lcom/bytedance/sdk/component/utils/ABk;->ac()V

    .line 248
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/Tgh/ac;->cJ()V

    .line 249
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/qMt;->cJ()V

    :cond_1
    return-void
.end method

.method private fl(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 149
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->ROR:I

    return-void
.end method

.method static synthetic fl(Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->CJ(I)V

    return-void
.end method

.method public static getChildDirected()I
    .locals 1

    .line 192
    const-string v0, "getCoppa"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/js;->hm(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 195
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Eh;->Qhi()Lcom/bytedance/sdk/openadsdk/core/pM;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/pM;->cJ()I

    move-result v0

    return v0
.end method

.method public static getDoNotSell()I
    .locals 1

    .line 232
    const-string v0, "getCCPA"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/js;->hm(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 235
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Eh;->Qhi()Lcom/bytedance/sdk/openadsdk/core/pM;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/pM;->Tgh()I

    move-result v0

    return v0
.end method

.method public static getGDPRConsent()I
    .locals 2

    .line 207
    const-string v0, "getGdpr"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/js;->hm(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 210
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Eh;->Qhi()Lcom/bytedance/sdk/openadsdk/core/pM;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/pM;->ac()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    if-nez v0, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public static setAppIconId(I)V
    .locals 1

    .line 255
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Eh;->Qhi()Lcom/bytedance/sdk/openadsdk/core/pM;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Eh;->Qhi()Lcom/bytedance/sdk/openadsdk/core/pM;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/pM;->Tgh(I)Lcom/bytedance/sdk/openadsdk/core/pM;

    :cond_0
    return-void
.end method

.method public static setChildDirected(I)V
    .locals 2

    .line 181
    const-string v0, "setCoppa"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/js;->hm(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-lt p0, v0, :cond_1

    const/4 v1, 0x1

    if-le p0, v1, :cond_2

    :cond_1
    move p0, v0

    .line 187
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Eh;->Qhi()Lcom/bytedance/sdk/openadsdk/core/pM;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/pM;->cJ(I)Lcom/bytedance/sdk/openadsdk/core/pM;

    return-void
.end method

.method public static setDoNotSell(I)V
    .locals 2

    .line 222
    const-string v0, "setCCPA"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/js;->hm(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-lt p0, v0, :cond_1

    const/4 v1, 0x1

    if-le p0, v1, :cond_2

    :cond_1
    move p0, v0

    .line 228
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Eh;->Qhi()Lcom/bytedance/sdk/openadsdk/core/pM;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/pM;->CJ(I)Lcom/bytedance/sdk/openadsdk/core/pM;

    return-void
.end method

.method public static setGDPRConsent(I)V
    .locals 2

    .line 199
    const-string v0, "setGdpr"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/js;->hm(Ljava/lang/String;)Z

    const/4 v0, -0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x1

    if-le p0, v1, :cond_1

    :cond_0
    move p0, v0

    .line 203
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Eh;->Qhi()Lcom/bytedance/sdk/openadsdk/core/pM;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/pM;->ac(I)Lcom/bytedance/sdk/openadsdk/core/pM;

    return-void
.end method

.method public static setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 267
    sput-object p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->Gm:Ljava/lang/String;

    return-void
.end method

.method public static setUserData(Ljava/lang/String;)V
    .locals 1

    .line 261
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Eh;->Qhi()Lcom/bytedance/sdk/openadsdk/core/pM;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Eh;->Qhi()Lcom/bytedance/sdk/openadsdk/core/pM;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/pM;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/pM;

    :cond_0
    return-void
.end method


# virtual methods
.method public getAppIconId()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->ac:I

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->Qhi:Ljava/lang/String;

    return-object v0
.end method

.method public getCcpa()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->Tgh:I

    return v0
.end method

.method public getCoppa()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->CJ:I

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->WAv:Ljava/lang/String;

    return-object v0
.end method

.method public getDebugLog()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->cJ:Z

    return v0
.end method

.method public getGdpr()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->fl:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->hm:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    sget-object v0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->Gm:Ljava/lang/String;

    return-object v0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->hm:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleBarTheme()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->ROR:I

    return v0
.end method

.method public isSupportMultiProcess()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->Sf:Z

    return v0
.end method

.method public isUseTextureView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
