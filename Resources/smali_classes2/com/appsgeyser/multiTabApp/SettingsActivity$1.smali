.class Lcom/appsgeyser/multiTabApp/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/SettingsActivity;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/SettingsActivity$1;->this$0:Lcom/appsgeyser/multiTabApp/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 79
    const-string p1, "hide_url_bar"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "hide_tab_bar"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 80
    :cond_0
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/Factory;->getWebContentController()Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 82
    invoke-interface {p1}, Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;->showNavigationBars()V

    .line 85
    :cond_1
    const-string p1, "show_quick_access_bar"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 87
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/SettingsActivity$1;->this$0:Lcom/appsgeyser/multiTabApp/SettingsActivity;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/SettingsActivity;->access$000(Lcom/appsgeyser/multiTabApp/SettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 89
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->createNotice()V

    goto :goto_0

    .line 91
    :cond_2
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->deleteNotice()V

    :cond_3
    :goto_0
    return-void
.end method
