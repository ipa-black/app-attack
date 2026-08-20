.class public Lcom/appsgeyser/sdk/ui/AboutDialogActivity;
.super Landroid/app/Activity;
.source "AboutDialogActivity.java"


# static fields
.field private static final APPSGEYSER_DESCRIPTION_CUSTOM:Ljava/lang/String; = "custom"

.field private static final APPSGEYSER_DESCRIPTION_LOGO:Ljava/lang/String; = "appsgeyser_logo"

.field private static final APPSGEYSER_DESCRIPTION_TEXT:Ljava/lang/String; = "appsgeyser_text"

.field private static final CONFIG_PHP_KEY:Ljava/lang/String; = "config_php_key"


# instance fields
.field private appName:Landroid/widget/TextView;

.field private appVersion:Landroid/widget/TextView;

.field private appsgeyserDescriptionLogoImageView:Landroid/widget/ImageView;

.field private closeScreenImageView:Landroid/widget/ImageView;

.field private config:Lcom/appsgeyser/sdk/configuration/Configuration;

.field private configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

.field private description:Ljava/lang/String;

.field private descriptionTextView:Landroid/widget/TextView;

.field private descriptionType:Ljava/lang/String;

.field private logoImageView:Landroid/widget/ImageView;

.field private privacy:Landroid/widget/Button;

.field private rate:Landroid/widget/Button;

.field private templateVersion:Landroid/widget/TextView;

.field private tos:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private init()V
    .locals 9

    const-string v0, "Version "

    const-string v1, "https://www.appsgeyser.com?pn="

    .line 77
    :try_start_0
    invoke-static {p0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object v2

    iput-object v2, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->config:Lcom/appsgeyser/sdk/configuration/Configuration;

    .line 78
    invoke-virtual {v2}, Lcom/appsgeyser/sdk/configuration/Configuration;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    .line 79
    sget v3, Lcom/appsgeyser/sdk/R$id;->logo:I

    invoke-virtual {p0, v3}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->logoImageView:Landroid/widget/ImageView;

    .line 80
    sget v3, Lcom/appsgeyser/sdk/R$id;->appsgeysersdk_about_appsgeyser_logo:I

    invoke-virtual {p0, v3}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->appsgeyserDescriptionLogoImageView:Landroid/widget/ImageView;

    .line 81
    sget v3, Lcom/appsgeyser/sdk/R$id;->close_about_screen:I

    invoke-virtual {p0, v3}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->closeScreenImageView:Landroid/widget/ImageView;

    .line 82
    sget v3, Lcom/appsgeyser/sdk/R$id;->description:I

    invoke-virtual {p0, v3}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->descriptionTextView:Landroid/widget/TextView;

    .line 83
    sget v3, Lcom/appsgeyser/sdk/R$id;->about_app_name:I

    invoke-virtual {p0, v3}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->appName:Landroid/widget/TextView;

    .line 84
    sget v3, Lcom/appsgeyser/sdk/R$id;->app_version:I

    invoke-virtual {p0, v3}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->appVersion:Landroid/widget/TextView;

    .line 85
    sget v3, Lcom/appsgeyser/sdk/R$id;->template_version:I

    invoke-virtual {p0, v3}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->templateVersion:Landroid/widget/TextView;

    .line 86
    sget v3, Lcom/appsgeyser/sdk/R$id;->app_tos:I

    invoke-virtual {p0, v3}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->tos:Landroid/widget/Button;

    .line 87
    sget v3, Lcom/appsgeyser/sdk/R$id;->app_rate:I

    invoke-virtual {p0, v3}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->rate:Landroid/widget/Button;

    .line 88
    sget v3, Lcom/appsgeyser/sdk/R$id;->app_privacy:I

    invoke-virtual {p0, v3}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->privacy:Landroid/widget/Button;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    .line 91
    :try_start_1
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 92
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 93
    iget-object v5, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->appVersion:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->appName:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 96
    :try_start_2
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 99
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->logoImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object v1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->logoImageView:Landroid/widget/ImageView;

    new-instance v4, Lcom/appsgeyser/sdk/ui/AboutDialogActivity$1;

    invoke-direct {v4, p0, v0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity$1;-><init>(Lcom/appsgeyser/sdk/ui/AboutDialogActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->closeScreenImageView:Landroid/widget/ImageView;

    new-instance v4, Lcom/appsgeyser/sdk/ui/AboutDialogActivity$2;

    invoke-direct {v4, p0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity$2;-><init>(Lcom/appsgeyser/sdk/ui/AboutDialogActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->templateVersion:Landroid/widget/TextView;

    sget v4, Lcom/appsgeyser/sdk/R$string;->appsgeysersdk_build:I

    const-string v5, "2.48.s"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/appsgeyser/sdk/R$string;->appsgeysersdk_description_with_publish_name:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 120
    iget-object v4, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->config:Lcom/appsgeyser/sdk/configuration/Configuration;

    invoke-virtual {v4}, Lcom/appsgeyser/sdk/configuration/Configuration;->getPublisherName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/appsgeyser/sdk/R$string;->appsgeysersdk_description_without_publish_name:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    :cond_0
    iget-object v4, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->descriptionType:Ljava/lang/String;

    const/4 v5, 0x1

    if-eqz v4, :cond_8

    .line 125
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x5069748f

    const/4 v8, 0x2

    if-eq v6, v7, :cond_3

    const v7, 0x59941cd3

    if-eq v6, v7, :cond_2

    const v7, 0x59979c55

    if-eq v6, v7, :cond_1

    goto :goto_1

    :cond_1
    const-string v6, "appsgeyser_text"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v3

    goto :goto_2

    :cond_2
    const-string v6, "appsgeyser_logo"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    goto :goto_2

    :cond_3
    const-string v6, "custom"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v8

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v4, -0x1

    :goto_2
    const/16 v6, 0x8

    if-eqz v4, :cond_7

    if-eq v4, v5, :cond_6

    if-eq v4, v8, :cond_5

    .line 140
    iget-object v4, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->appsgeyserDescriptionLogoImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    iget-object v4, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->descriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 135
    :cond_5
    iget-object v1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->description:Ljava/lang/String;

    .line 136
    iget-object v4, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->appsgeyserDescriptionLogoImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    iget-object v4, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->descriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 131
    :cond_6
    iget-object v4, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->appsgeyserDescriptionLogoImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v3, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->descriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 127
    :cond_7
    iget-object v4, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->appsgeyserDescriptionLogoImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    iget-object v4, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->descriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    :cond_8
    :goto_3
    const-string v3, "PUB_NAME"

    iget-object v4, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->config:Lcom/appsgeyser/sdk/configuration/Configuration;

    invoke-virtual {v4}, Lcom/appsgeyser/sdk/configuration/Configuration;->getPublisherName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "APPSGEYSER_URL"

    .line 147
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "APP_VERSION"

    const-string v3, ""

    .line 148
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "APP_ID"

    .line 149
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->descriptionTextView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->descriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 152
    iget-object v0, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->descriptionTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 154
    iget-object v0, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->tos:Landroid/widget/Button;

    new-instance v1, Lcom/appsgeyser/sdk/ui/AboutDialogActivity$3;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity$3;-><init>(Lcom/appsgeyser/sdk/ui/AboutDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->privacy:Landroid/widget/Button;

    new-instance v1, Lcom/appsgeyser/sdk/ui/AboutDialogActivity$4;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity$4;-><init>(Lcom/appsgeyser/sdk/ui/AboutDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->rate:Landroid/widget/Button;

    new-instance v1, Lcom/appsgeyser/sdk/ui/AboutDialogActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity$$ExternalSyntheticLambda0;-><init>(Lcom/appsgeyser/sdk/ui/AboutDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    new-instance v0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity$$ExternalSyntheticLambda1;-><init>(Lcom/appsgeyser/sdk/ui/AboutDialogActivity;)V

    invoke-static {p0, v0}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->isAppOnMarket(Landroid/content/Context;Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker$OnReceiveListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 187
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method


# virtual methods
.method synthetic lambda$init$0$com-appsgeyser-sdk-ui-AboutDialogActivity(Landroid/view/View;)V
    .locals 2

    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "https://play.google.com/store/apps/details?id="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "&reviewId=0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 174
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 175
    invoke-virtual {p0, v0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$init$1$com-appsgeyser-sdk-ui-AboutDialogActivity(Z)V
    .locals 1

    .line 0
    if-eqz p1, :cond_0

    .line 180
    iget-object p1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->rate:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->rate:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget v0, Lcom/appsgeyser/sdk/R$layout;->appsgeysersdk_about_dialog:I

    invoke-virtual {p0, v0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->setContentView(I)V

    .line 57
    const-string v0, "config_php_key"

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    iput-object p1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    iput-object p1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    .line 65
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    if-eqz p1, :cond_2

    .line 66
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getAboutScreenDescriptionType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->descriptionType:Ljava/lang/String;

    .line 67
    iget-object p1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getAboutScreenDescription()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->description:Ljava/lang/String;

    .line 69
    :cond_2
    invoke-direct {p0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->init()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 193
    const-string v0, "config_php_key"

    iget-object v1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 194
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
