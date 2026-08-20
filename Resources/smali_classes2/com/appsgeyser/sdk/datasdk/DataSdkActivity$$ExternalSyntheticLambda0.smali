.class public final synthetic Lcom/appsgeyser/sdk/datasdk/DataSdkActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;

.field public final synthetic f$1:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

.field public final synthetic f$2:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/sdk/datasdk/DataSdkActivity$$ExternalSyntheticLambda0;->f$0:Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;

    iput-object p2, p0, Lcom/appsgeyser/sdk/datasdk/DataSdkActivity$$ExternalSyntheticLambda0;->f$1:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    iput-object p3, p0, Lcom/appsgeyser/sdk/datasdk/DataSdkActivity$$ExternalSyntheticLambda0;->f$2:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/appsgeyser/sdk/datasdk/DataSdkActivity$$ExternalSyntheticLambda0;->f$0:Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;

    iget-object v1, p0, Lcom/appsgeyser/sdk/datasdk/DataSdkActivity$$ExternalSyntheticLambda0;->f$1:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    iget-object v2, p0, Lcom/appsgeyser/sdk/datasdk/DataSdkActivity$$ExternalSyntheticLambda0;->f$2:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, p1}, Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;->lambda$showEulaDialog$0$com-appsgeyser-sdk-datasdk-DataSdkActivity(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method
