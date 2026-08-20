.class Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8$1;
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

    .line 671
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8$1;->this$1:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 674
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8$1;->this$1:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8;

    iget-object p2, p2, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 675
    const-string v0, "never_show"

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 676
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 677
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
