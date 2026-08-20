.class public Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AccessActivity.java"


# instance fields
.field private accessData:Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;

.field private appNameText:Landroid/widget/TextView;

.field private buyButton:Landroid/widget/Button;

.field private descriptionText:Landroid/widget/TextView;

.field private mainBg:Landroid/view/View;

.field private priceText:Landroid/widget/TextView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private screenIcon:Landroid/widget/ImageView;

.field private titleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->showErrorMessage()V

    return-void
.end method

.method private hideProgress()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private hideUi()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->buyButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->priceText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->screenIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->appNameText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->descriptionText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->titleText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 78
    sget v0, Lcom/appsgeyser/sdk/R$id;->buy_button:I

    invoke-virtual {p0, v0}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->buyButton:Landroid/widget/Button;

    .line 79
    sget v0, Lcom/appsgeyser/sdk/R$id;->main_background:I

    invoke-virtual {p0, v0}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->mainBg:Landroid/view/View;

    .line 80
    sget v0, Lcom/appsgeyser/sdk/R$id;->price_text:I

    invoke-virtual {p0, v0}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->priceText:Landroid/widget/TextView;

    .line 81
    sget v0, Lcom/appsgeyser/sdk/R$id;->progress_bar:I

    invoke-virtual {p0, v0}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 82
    sget v0, Lcom/appsgeyser/sdk/R$id;->application_name_text:I

    invoke-virtual {p0, v0}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->appNameText:Landroid/widget/TextView;

    .line 83
    sget v0, Lcom/appsgeyser/sdk/R$id;->screen_icon:I

    invoke-virtual {p0, v0}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->screenIcon:Landroid/widget/ImageView;

    .line 84
    sget v0, Lcom/appsgeyser/sdk/R$id;->description:I

    invoke-virtual {p0, v0}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->descriptionText:Landroid/widget/TextView;

    .line 85
    sget v0, Lcom/appsgeyser/sdk/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->titleText:Landroid/widget/TextView;

    .line 86
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "iconId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->screenIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method private purchase()V
    .locals 2

    .line 111
    invoke-static {}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->getInstance()Lcom/appsgeyser/sdk/inapp/PurchaseController;

    move-result-object v0

    new-instance v1, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity$1;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity$1;-><init>(Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->purchaseAccess(Landroid/app/Activity;Lcom/appsgeyser/sdk/inapp/PurchaseController$PurchaseListener;)V

    return-void
.end method

.method private showErrorMessage()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->buyButton:Landroid/widget/Button;

    const-string v1, "Sorry, connection failed."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 73
    invoke-direct {p0}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->hideProgress()V

    return-void
.end method

.method private showProgress()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private showPurchaseNotAllowDialog()V
    .locals 3

    .line 173
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/appsgeyser/sdk/R$string;->purchase_error:I

    .line 174
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/appsgeyser/sdk/R$string;->purchase_not_allow_message:I

    .line 175
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 176
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/appsgeyser/sdk/R$string;->tt_label_ok:I

    const/4 v2, 0x0

    .line 177
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showUi()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->buyButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->priceText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->screenIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->appNameText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->descriptionText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->titleText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private stringToColorInt(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_1

    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 134
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    const p1, -0xffff01

    return p1
.end method

.method private updateView(Lcom/appsgeyser/sdk/inapp/models/BillingProduct;)V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->buyButton:Landroid/widget/Button;

    new-instance v1, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity$$ExternalSyntheticLambda2;-><init>(Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->buyButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->accessData:Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->getButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->buyButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->accessData:Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->getButtonTintColor()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->stringToColorInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 103
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->mainBg:Landroid/view/View;

    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->accessData:Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->getBackgroundColor()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->stringToColorInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 104
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->buyButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->accessData:Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->getButtonTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->stringToColorInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 105
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->priceText:Landroid/widget/TextView;

    sget v1, Lcom/appsgeyser/sdk/R$string;->price_sub_text:I

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/inapp/models/BillingProduct;->getPrice()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->descriptionText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/inapp/models/BillingProduct;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->titleText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/inapp/models/BillingProduct;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-appsgeyser-sdk-inapp-ui-AccessActivity(Lcom/appsgeyser/sdk/inapp/models/statuses/Status;)V
    .locals 1

    .line 47
    instance-of v0, p1, Lcom/appsgeyser/sdk/inapp/models/statuses/LoadingStatus;

    if-eqz v0, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->hideUi()V

    .line 49
    invoke-direct {p0}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->showProgress()V

    goto :goto_1

    .line 50
    :cond_0
    instance-of v0, p1, Lcom/appsgeyser/sdk/inapp/models/statuses/ErrorStatus;

    if-eqz v0, :cond_1

    .line 51
    invoke-direct {p0}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->hideUi()V

    .line 52
    invoke-direct {p0}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->hideProgress()V

    .line 53
    invoke-direct {p0}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->showErrorMessage()V

    goto :goto_1

    .line 54
    :cond_1
    instance-of v0, p1, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;

    if-eqz v0, :cond_4

    .line 55
    check-cast p1, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;

    .line 56
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;->isFeatureActive()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;->isFeaturePurchased()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;->getConfigData()Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;

    iput-object v0, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->accessData:Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;

    .line 61
    invoke-direct {p0}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->hideProgress()V

    .line 62
    invoke-direct {p0}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->showUi()V

    .line 63
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;->getProduct()Lcom/appsgeyser/sdk/inapp/models/BillingProduct;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->updateView(Lcom/appsgeyser/sdk/inapp/models/BillingProduct;)V

    goto :goto_1

    .line 57
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->finish()V

    :cond_4
    :goto_1
    return-void
.end method

.method synthetic lambda$onCreate$1$com-appsgeyser-sdk-inapp-ui-AccessActivity(Lcom/appsgeyser/sdk/inapp/models/statuses/Status;)V
    .locals 1

    .line 46
    new-instance v0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity$$ExternalSyntheticLambda1;-><init>(Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;Lcom/appsgeyser/sdk/inapp/models/statuses/Status;)V

    invoke-virtual {p0, v0}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$updateView$2$com-appsgeyser-sdk-inapp-ui-AccessActivity(Landroid/view/View;)V
    .locals 0

    .line 94
    iget-object p1, p0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->accessData:Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->isAllowPurchases()Z

    move-result p1

    if-nez p1, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->showPurchaseNotAllowDialog()V

    goto :goto_0

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->purchase()V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 40
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    sget p1, Lcom/appsgeyser/sdk/R$layout;->appsgeysersdk_activity_access:I

    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->setContentView(I)V

    .line 42
    invoke-direct {p0}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->initView()V

    .line 43
    invoke-direct {p0}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->hideUi()V

    .line 44
    invoke-direct {p0}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;->showProgress()V

    .line 45
    invoke-static {}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->getInstance()Lcom/appsgeyser/sdk/inapp/PurchaseController;

    move-result-object p1

    new-instance v0, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity$$ExternalSyntheticLambda0;-><init>(Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;)V

    invoke-virtual {p1, v0}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->subscribeAccessStatus(Lrx/functions/Action1;)V

    return-void
.end method
