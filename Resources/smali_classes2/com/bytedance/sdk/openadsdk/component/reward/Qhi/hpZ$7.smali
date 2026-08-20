.class Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;
.super Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;
.source "RewardFullWebViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$fl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$fl;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/NFd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/common/cJ;Lcom/bytedance/sdk/openadsdk/cJ/zc;ZLcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$fl;)V
    .locals 7

    .line 981
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iput-object p8, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$fl;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/NFd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/common/cJ;Lcom/bytedance/sdk/openadsdk/cJ/zc;Z)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1167
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1168
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->fl(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Z)Z

    .line 1172
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Tgh(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Z)Z

    .line 1173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils$AudioInfoReceiver;->Qhi(Lcom/bytedance/sdk/openadsdk/WAv/Sf;)V

    .line 1174
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->ROR()I

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;I)I

    .line 1175
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->Tgh()V

    .line 1179
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->cJ(Ljava/lang/String;)V

    .line 1181
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$fl;

    if-eqz v0, :cond_1

    .line 1182
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$fl;->Qhi(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1188
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1192
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->fl()V

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$fl;

    if-eqz v0, :cond_1

    .line 1199
    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$fl;->Qhi(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1041
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3

    .line 1077
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    .line 1081
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1082
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onReceivedError WebResourceError : description="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  url ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTAD.RFWVM"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_1

    .line 1084
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    .line 1087
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1088
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Qhi(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 1090
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1091
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->kYc(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1092
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->fl(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Z)Z

    .line 1094
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    if-eqz p1, :cond_6

    .line 1096
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p3, :cond_5

    .line 1099
    const-string p2, "code"

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1100
    const-string p2, "msg"

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1103
    :cond_5
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->Qhi(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    if-eqz p3, :cond_7

    .line 1112
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p2

    iput p2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Tgh:I

    .line 1113
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->ROR:Ljava/lang/String;

    :cond_7
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 4

    .line 1128
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Qhi(ZLjava/lang/String;I)V

    if-eqz p2, :cond_0

    .line 1130
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceivedHttpError:url ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTAD.RFWVM"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_1

    .line 1133
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1137
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->kYc(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1138
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->fl(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Z)Z

    if-eqz p3, :cond_1

    .line 1140
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Tgh:I

    .line 1141
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    const-string v1, "onReceivedHttpError"

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->ROR:Ljava/lang/String;

    .line 1144
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    if-eqz v0, :cond_3

    .line 1146
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p3, :cond_2

    .line 1149
    const-string v1, "code"

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1150
    const-string v1, "msg"

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1153
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->Qhi(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    if-eqz p2, :cond_4

    .line 1161
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    :cond_4
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 1122
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 3

    .line 1032
    :try_start_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    .line 1034
    const-string v1, "TTAD.RFWVM"

    const-string v2, "shouldInterceptRequest error1"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1036
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 9

    .line 984
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    .line 985
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 986
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Tgh(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object p1

    .line 987
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->ABk()Ljava/lang/String;

    move-result-object v0

    .line 988
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;

    move-result-object v2

    invoke-virtual {v2, v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    .line 989
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 990
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    if-eqz v0, :cond_2

    .line 991
    invoke-static {p2}, Lcom/bytedance/sdk/component/adexpress/CJ/Eh;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/CJ/Eh$Qhi;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v8, v1

    .line 993
    sget-object v1, Lcom/bytedance/sdk/component/adexpress/CJ/Eh$Qhi;->Qhi:Lcom/bytedance/sdk/component/adexpress/CJ/Eh$Qhi;

    if-ne v0, v1, :cond_1

    .line 994
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    move-object v3, p2

    invoke-interface/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->Qhi(Ljava/lang/String;JJI)V

    goto :goto_0

    .line 995
    :cond_1
    sget-object v1, Lcom/bytedance/sdk/component/adexpress/CJ/Eh$Qhi;->ac:Lcom/bytedance/sdk/component/adexpress/CJ/Eh$Qhi;

    if-ne v0, v1, :cond_2

    .line 996
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    move-object v3, p2

    invoke-interface/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->cJ(Ljava/lang/String;JJI)V

    :cond_2
    :goto_0
    return-object p1

    .line 1007
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hm(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1008
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 1010
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->iMK(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)I

    .line 1011
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/fl/cJ;->Qhi()Lcom/bytedance/sdk/openadsdk/fl/cJ;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->pA(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hm(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p2}, Lcom/bytedance/sdk/openadsdk/fl/cJ;->Qhi(Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/geckox/model/WebResourceResponseModel;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1012
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/geckox/model/WebResourceResponseModel;->getWebResourceResponse()Landroid/webkit/WebResourceResponse;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1013
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)I

    .line 1015
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/geckox/model/WebResourceResponseModel;->getWebResourceResponse()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_5
    if-eqz v0, :cond_6

    .line 1017
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/geckox/model/WebResourceResponseModel;->getMsg()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 1018
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$7;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->HzH(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)I

    .line 1020
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    .line 1023
    const-string v1, "TTAD.RFWVM"

    const-string v2, "shouldInterceptRequest url error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1024
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
