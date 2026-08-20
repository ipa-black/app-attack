.class Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$2;
.super Ljava/lang/Object;
.source "PAGBannerAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/cJ/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

.field final synthetic cJ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Ljava/lang/String;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$2;->ac:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$2;->cJ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Landroid/view/ViewGroup;I)Z
    .locals 2

    .line 237
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->zc()V

    .line 238
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$2;->ac:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->IC()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 239
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/VastBannerBackupView;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/VastBannerBackupView;-><init>(Landroid/content/Context;)V

    .line 241
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$2;->cJ:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/VastBannerBackupView;->setClosedListenerKey(Ljava/lang/String;)V

    .line 242
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$2;->ac:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$2;->ac:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->cJ(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/VastBannerBackupView;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;)V

    .line 243
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$2;->ac:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->ac(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)Lcom/bytedance/sdk/openadsdk/dislike/cJ;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/VastBannerBackupView;->setDislikeInner(Lcom/bytedance/sdk/openadsdk/core/CQU;)V

    .line 244
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$2;->ac:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->fl:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/VastBannerBackupView;->setDislikeOuter(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    .line 245
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$2;->ac:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->CJ(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/VastBannerBackupView;->setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;)V

    .line 246
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setVastVideoHelper(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/VastBannerBackupView;)V

    goto :goto_0

    .line 248
    :cond_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;-><init>(Landroid/content/Context;)V

    .line 250
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$2;->cJ:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->setClosedListenerKey(Ljava/lang/String;)V

    .line 251
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$2;->ac:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$2;->ac:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->cJ(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;)V

    .line 252
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$2;->ac:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->ac(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)Lcom/bytedance/sdk/openadsdk/dislike/cJ;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->setDislikeInner(Lcom/bytedance/sdk/openadsdk/core/CQU;)V

    .line 253
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$2;->ac:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->fl:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->setDislikeOuter(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    .line 254
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$2;->ac:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->CJ(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
