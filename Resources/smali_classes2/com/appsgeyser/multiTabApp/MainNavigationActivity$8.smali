.class Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8;
.super Ljava/lang/Object;
.source "MainNavigationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->checkDrawOverlayPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;Landroid/content/SharedPreferences;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 663
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8;->val$prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 667
    :try_start_0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    const v1, 0x7f12016e

    .line 668
    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    const v1, 0x7f12005f

    .line 669
    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    new-instance v5, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8$1;

    invoke-direct {v5, p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8$1;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8;)V

    new-instance v6, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8$2;

    invoke-direct {v6, p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8$2;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8;)V

    new-instance v7, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8$3;

    invoke-direct {v7, p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8$3;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8;)V

    .line 668
    invoke-static/range {v2 .. v7}, Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs;->showNoticeDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 696
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 697
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 699
    const-string v1, "Exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
