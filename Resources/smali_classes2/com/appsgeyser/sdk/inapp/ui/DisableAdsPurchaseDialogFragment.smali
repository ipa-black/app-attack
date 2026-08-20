.class public Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "DisableAdsPurchaseDialogFragment.java"


# instance fields
.field private backgroundTop:Landroid/widget/RelativeLayout;

.field private cancelButton:Landroid/widget/Button;

.field private confirmButton:Landroid/widget/Button;

.field private mainColorId:I

.field private priceText:Landroid/widget/TextView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private shadowView:Landroid/view/View;

.field private textError:Landroid/widget/TextView;

.field private textPurchaseNotAllow:Landroid/widget/TextView;

.field private textTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 55
    iput p1, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->mainColorId:I

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->showErrorPurchase()V

    return-void
.end method

.method private getApplicationName()Ljava/lang/String;
    .locals 2

    .line 157
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 158
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-nez v1, :cond_0

    .line 159
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private hideError()V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->shadowView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->textTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->confirmButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->priceText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->textPurchaseNotAllow:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->textError:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private hideProgress()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->shadowView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private hidePurchaseNotAllowMessage()V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->shadowView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->textTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->confirmButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->priceText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->textPurchaseNotAllow:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->textError:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method static synthetic lambda$onViewCreated$1(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private purchase()V
    .locals 3

    .line 137
    invoke-static {}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->getInstance()Lcom/appsgeyser/sdk/inapp/PurchaseController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment$1;-><init>(Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->purchaseDisableAds(Landroid/app/Activity;Lcom/appsgeyser/sdk/inapp/PurchaseController$PurchaseListener;)V

    return-void
.end method

.method private showError()V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->shadowView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->textTitle:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->confirmButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->priceText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->textPurchaseNotAllow:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->textError:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private showErrorPurchase()V
    .locals 3

    .line 152
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Sorry, purchasing failed."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 153
    invoke-direct {p0}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->hideProgress()V

    return-void
.end method

.method private showProgress()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->shadowView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showPurchaseNotAllowMessage()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->shadowView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->textTitle:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->confirmButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->priceText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->textPurchaseNotAllow:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->textError:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private updateView(Lcom/appsgeyser/sdk/inapp/models/BillingProduct;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->priceText:Landroid/widget/TextView;

    sget v1, Lcom/appsgeyser/sdk/R$string;->disable_ads_price:I

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/inapp/models/BillingProduct;->getPrice()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object p1, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->confirmButton:Landroid/widget/Button;

    new-instance v0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment$$ExternalSyntheticLambda4;-><init>(Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onViewCreated$0$com-appsgeyser-sdk-inapp-ui-DisableAdsPurchaseDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 86
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->dismiss()V

    return-void
.end method

.method synthetic lambda$onViewCreated$2$com-appsgeyser-sdk-inapp-ui-DisableAdsPurchaseDialogFragment(Lcom/appsgeyser/sdk/inapp/models/statuses/Status;)V
    .locals 1

    .line 106
    instance-of v0, p1, Lcom/appsgeyser/sdk/inapp/models/statuses/LoadingStatus;

    if-eqz v0, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->showProgress()V

    goto :goto_1

    .line 108
    :cond_0
    instance-of v0, p1, Lcom/appsgeyser/sdk/inapp/models/statuses/ErrorStatus;

    if-eqz v0, :cond_1

    .line 109
    invoke-direct {p0}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->hideProgress()V

    .line 110
    invoke-direct {p0}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->showError()V

    goto :goto_1

    .line 111
    :cond_1
    instance-of v0, p1, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;

    if-eqz v0, :cond_5

    .line 112
    check-cast p1, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;

    .line 113
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;->isFeatureActive()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;->isFeaturePurchased()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;->getConfigData()Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;->isAllowPurchases()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    invoke-direct {p0}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->hideError()V

    .line 119
    invoke-direct {p0}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->hideProgress()V

    .line 120
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;->getProduct()Lcom/appsgeyser/sdk/inapp/models/BillingProduct;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->updateView(Lcom/appsgeyser/sdk/inapp/models/BillingProduct;)V

    goto :goto_1

    .line 122
    :cond_3
    invoke-direct {p0}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->showPurchaseNotAllowMessage()V

    goto :goto_1

    .line 114
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->dismiss()V

    :cond_5
    :goto_1
    return-void
.end method

.method synthetic lambda$onViewCreated$3$com-appsgeyser-sdk-inapp-ui-DisableAdsPurchaseDialogFragment(Lcom/appsgeyser/sdk/inapp/models/statuses/Status;)V
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment$$ExternalSyntheticLambda3;-><init>(Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;Lcom/appsgeyser/sdk/inapp/models/statuses/Status;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$updateView$4$com-appsgeyser-sdk-inapp-ui-DisableAdsPurchaseDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->purchase()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 68
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 61
    sget p3, Lcom/appsgeyser/sdk/R$layout;->appsgeyserdsk_disable_ads_dialog:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 73
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->requireDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 76
    sget p2, Lcom/appsgeyser/sdk/R$id;->button_cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->cancelButton:Landroid/widget/Button;

    .line 77
    sget p2, Lcom/appsgeyser/sdk/R$id;->button_purchase:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->confirmButton:Landroid/widget/Button;

    .line 78
    sget p2, Lcom/appsgeyser/sdk/R$id;->text_price:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->priceText:Landroid/widget/TextView;

    .line 79
    sget p2, Lcom/appsgeyser/sdk/R$id;->shadow_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->shadowView:Landroid/view/View;

    .line 80
    sget p2, Lcom/appsgeyser/sdk/R$id;->progress_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 81
    sget p2, Lcom/appsgeyser/sdk/R$id;->text_error:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->textError:Landroid/widget/TextView;

    .line 82
    sget p2, Lcom/appsgeyser/sdk/R$id;->text_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->textTitle:Landroid/widget/TextView;

    .line 83
    sget p2, Lcom/appsgeyser/sdk/R$id;->background_top:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->backgroundTop:Landroid/widget/RelativeLayout;

    .line 84
    sget p2, Lcom/appsgeyser/sdk/R$id;->text_purchase_not_allow:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->textPurchaseNotAllow:Landroid/widget/TextView;

    .line 86
    iget-object p1, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->cancelButton:Landroid/widget/Button;

    new-instance p2, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object p1, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->shadowView:Landroid/view/View;

    new-instance p2, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object p1, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->textTitle:Landroid/widget/TextView;

    sget p2, Lcom/appsgeyser/sdk/R$string;->disable_ads_dialog_description:I

    invoke-direct {p0}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object p1, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->backgroundTop:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    iget v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->mainColorId:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 92
    iget-object p1, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->confirmButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    iget v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->mainColorId:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 93
    iget-object p1, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->cancelButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/appsgeyser/sdk/R$color;->white:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 100
    iget-object p1, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->confirmButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/appsgeyser/sdk/R$color;->white:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    .line 101
    iget-object p1, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->cancelButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    iget v0, p0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->mainColorId:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    .line 103
    invoke-static {}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->getInstance()Lcom/appsgeyser/sdk/inapp/PurchaseController;

    move-result-object p1

    new-instance p2, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment$$ExternalSyntheticLambda2;-><init>(Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;)V

    invoke-virtual {p1, p2}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->subscribeDisableAdsStatus(Lrx/functions/Action1;)V

    return-void
.end method
