.class public Lcom/bytedance/sdk/openadsdk/iMK/ac;
.super Ljava/lang/Object;
.source "TTNetClient.java"


# static fields
.field private static volatile Qhi:Lcom/bytedance/sdk/openadsdk/iMK/ac;


# instance fields
.field private ac:Lcom/bytedance/sdk/openadsdk/iMK/Qhi/ac;

.field private final cJ:Lcom/bytedance/sdk/component/ROR/Qhi;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance p1, Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;-><init>()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2710

    .line 64
    invoke-virtual {p1, v1, v2, v0}, Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;->Qhi(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 65
    invoke-virtual {p1, v1, v2, v0}, Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;->cJ(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 66
    invoke-virtual {p1, v1, v2, v0}, Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;->ac(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;

    move-result-object p1

    const/4 v0, 0x1

    .line 67
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;->Qhi(Z)Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;->Qhi()Lcom/bytedance/sdk/component/ROR/Qhi;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/iMK/ac;->cJ:Lcom/bytedance/sdk/component/ROR/Qhi;

    .line 69
    new-instance v0, Lcom/bytedance/sdk/openadsdk/iMK/ac$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/iMK/ac$1;-><init>(Lcom/bytedance/sdk/openadsdk/iMK/ac;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/WAv;)V

    .line 83
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ROR/Qhi;->fl()Lcom/bytedance/sdk/component/cJ/Qhi/zc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/zc;->Qhi()Lcom/bytedance/sdk/component/cJ/Qhi/fl;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x20

    .line 85
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/cJ/Qhi/fl;->Qhi(I)V

    :cond_0
    return-void
.end method

.method private CJ()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/iMK/ac;->ac:Lcom/bytedance/sdk/openadsdk/iMK/Qhi/ac;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Lcom/bytedance/sdk/openadsdk/iMK/Qhi/ac;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/iMK/Qhi/ac;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/iMK/ac;->ac:Lcom/bytedance/sdk/openadsdk/iMK/Qhi/ac;

    :cond_0
    return-void
.end method

.method public static Qhi()Lcom/bytedance/sdk/openadsdk/iMK/ac;
    .locals 3

    .line 52
    sget-object v0, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/iMK/ac;

    if-nez v0, :cond_1

    .line 53
    const-class v0, Lcom/bytedance/sdk/openadsdk/iMK/ac;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/iMK/ac;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/bytedance/sdk/openadsdk/iMK/ac;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/iMK/ac;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/iMK/ac;

    .line 57
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 59
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/iMK/ac;

    return-object v0
.end method


# virtual methods
.method public Qhi(ILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 1

    .line 115
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Tgh()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ROR/fl;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/fl/Gm;->Qhi(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/fl/Gm;->cJ(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p1

    .line 116
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->CJ(Landroid/content/Context;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/fl/Gm;->fl(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p1

    .line 117
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/content/Context;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/fl/Gm;->CJ(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p1

    const/4 v0, 0x2

    .line 118
    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/fl/Gm;->ac(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p1

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Tgh()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, p2}, Lcom/bytedance/sdk/openadsdk/ROR/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bytedance/sdk/component/fl/HzH;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/fl/Gm;->Qhi(Lcom/bytedance/sdk/component/fl/HzH;)Lcom/bytedance/sdk/component/fl/WAv;

    if-eqz p2, :cond_0

    .line 120
    new-instance p1, Lcom/bytedance/sdk/openadsdk/iMK/ac$2;

    invoke-direct {p1, p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/iMK/ac$2;-><init>(Lcom/bytedance/sdk/openadsdk/iMK/ac;Landroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/model/hpZ;Landroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 143
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ROR/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/hpZ;)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/fl/Gm;->ac(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/ROR/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bytedance/sdk/component/fl/HzH;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/fl/Gm;->Qhi(Lcom/bytedance/sdk/component/fl/HzH;)Lcom/bytedance/sdk/component/fl/WAv;

    :cond_0
    return-void
.end method

.method public Qhi(Ljava/lang/String;IILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 1

    .line 107
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ROR/fl;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/bytedance/sdk/component/fl/Gm;->Qhi(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p2

    invoke-interface {p2, p3}, Lcom/bytedance/sdk/component/fl/Gm;->cJ(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p2

    .line 108
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/zn;->CJ(Landroid/content/Context;)I

    move-result p3

    invoke-interface {p2, p3}, Lcom/bytedance/sdk/component/fl/Gm;->fl(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p2

    .line 109
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/content/Context;)I

    move-result p3

    invoke-interface {p2, p3}, Lcom/bytedance/sdk/component/fl/Gm;->CJ(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p2

    const/4 p3, 0x2

    .line 110
    invoke-interface {p2, p3}, Lcom/bytedance/sdk/component/fl/Gm;->ac(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p2

    invoke-static {p5, p1, p4}, Lcom/bytedance/sdk/openadsdk/ROR/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bytedance/sdk/component/fl/HzH;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/component/fl/Gm;->Qhi(Lcom/bytedance/sdk/component/fl/HzH;)Lcom/bytedance/sdk/component/fl/WAv;

    return-void
.end method

.method public Qhi(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 149
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ROR/fl;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/fl/Gm;->ac(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/iMK/ac$4;

    invoke-direct {v0, p0, p2}, Lcom/bytedance/sdk/openadsdk/iMK/ac$4;-><init>(Lcom/bytedance/sdk/openadsdk/iMK/ac;Landroid/view/View;)V

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/fl/Gm;->Qhi(Lcom/bytedance/sdk/component/fl/hm;)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/iMK/ac$3;

    invoke-direct {v0, p0, p2}, Lcom/bytedance/sdk/openadsdk/iMK/ac$3;-><init>(Lcom/bytedance/sdk/openadsdk/iMK/ac;Landroid/view/View;)V

    .line 157
    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/fl/Gm;->Qhi(Lcom/bytedance/sdk/component/fl/HzH;)Lcom/bytedance/sdk/component/fl/WAv;

    :cond_0
    return-void
.end method

.method public ac()Lcom/bytedance/sdk/openadsdk/iMK/Qhi/ac;
    .locals 1

    .line 101
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->CJ()V

    .line 102
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/iMK/ac;->ac:Lcom/bytedance/sdk/openadsdk/iMK/Qhi/ac;

    return-object v0
.end method

.method public cJ()Lcom/bytedance/sdk/component/ROR/Qhi;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/iMK/ac;->cJ:Lcom/bytedance/sdk/component/ROR/Qhi;

    return-object v0
.end method
