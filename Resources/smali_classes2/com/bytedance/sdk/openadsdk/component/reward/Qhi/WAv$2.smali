.class Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$2;
.super Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$Qhi;
.source "RewardFullScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ(Lcom/bytedance/sdk/component/utils/CQU;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;

.field Qhi:Z

.field final synthetic ac:Z

.field final synthetic cJ:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;ZZ)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$2;->CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$2;->cJ:Z

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$2;->ac:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$1;)V

    return-void
.end method


# virtual methods
.method Qhi(II)V
    .locals 6

    .line 209
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$2;->CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Dq:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$2;->CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;

    .line 210
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, p2, :cond_0

    .line 211
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$2;->CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 212
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$2;->CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->WAv(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    goto :goto_0

    .line 214
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$2;->CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 215
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$2;->CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->hm(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 217
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$2;->CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 219
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 220
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    if-nez p1, :cond_6

    .line 222
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    .line 223
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$2;->CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v4

    iget v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Dq:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$2;->CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;

    .line 224
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v4

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_1

    .line 225
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi()F

    move-result p2

    :goto_1
    float-to-int p2, p2

    add-int/2addr p1, p2

    goto :goto_2

    .line 226
    :cond_1
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$2;->CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v4

    iget v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Dq:I

    if-ne v4, p2, :cond_3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$2;->CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;

    .line 227
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v4

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, p2, :cond_3

    .line 228
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$2;->cJ:Z

    if-eqz p2, :cond_2

    .line 229
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi()F

    move-result p2

    float-to-int p2, p2

    add-int/2addr v1, p2

    .line 231
    :cond_2
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$2;->ac:Z

    if-eqz p2, :cond_3

    .line 232
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi()F

    move-result p2

    goto :goto_1

    .line 237
    :cond_3
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 238
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 239
    iput-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$2;->Qhi:Z

    .line 242
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$2;->CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Hf:F

    const/high16 p2, 0x42c80000    # 100.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_5

    const/high16 p1, -0x1000000

    .line 243
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_5
    return-void

    .line 245
    :cond_6
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$2;->Qhi:Z

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    .line 246
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 247
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$2;->Qhi:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_7
    return-void
.end method
