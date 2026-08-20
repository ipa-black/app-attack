.class public Lcom/appsgeyser/multiTabApp/configuration/ConfigResolver;
.super Ljava/lang/Object;
.source "ConfigResolver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolveConfig(Landroid/content/Context;)Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;
    .locals 1

    .line 11
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getConfig()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    move-result-object p0

    return-object p0

    .line 16
    :cond_0
    invoke-static {p0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;

    move-result-object v0

    .line 19
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;->loadConfiguration(Landroid/content/Context;)Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
