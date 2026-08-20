.class Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8$3;
.super Ljava/lang/Object;
.source "MainNavigationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8;)V
    .locals 0

    .line 686
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8$3;->this$1:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 689
    new-instance p2, Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8$3;->this$1:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8;

    iget-object v1, v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    .line 690
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {p2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 691
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8$3;->this$1:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8;

    iget-object v0, v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 692
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
