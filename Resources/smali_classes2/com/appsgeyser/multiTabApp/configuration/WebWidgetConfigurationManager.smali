.class public Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;
.super Ljava/lang/Object;
.source "WebWidgetConfigurationManager.java"


# static fields
.field private static instance:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;


# instance fields
.field private config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

.field private parser:Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationParser;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationParser;

    invoke-direct {v0, p1}, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;->parser:Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationParser;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;
    .locals 1

    .line 20
    sget-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;->instance:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;

    invoke-direct {v0, p0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;->instance:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;

    .line 24
    :cond_0
    sget-object p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;->instance:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;

    return-object p0
.end method

.method private loadFromCurrentConfig(Landroid/content/Context;)Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;
    .locals 2

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;->parser:Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationParser;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationParser;->parse()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    move-result-object v0

    .line 62
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/Factory;->getWidgetsController()Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;->saveConfiguration(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;->instance:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;

    return-void
.end method

.method public loadConfiguration(Landroid/content/Context;)Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/utils/VersionManager;->getCurrentVersion(Landroid/content/Context;)I

    move-result v0

    .line 38
    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/utils/VersionManager;->getPreviousVersion(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;->loadSerializedConfiguration(Landroid/content/Context;)Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;->config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 50
    :catch_0
    invoke-direct {p0, p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;->loadFromCurrentConfig(Landroid/content/Context;)Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;->config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;->loadFromCurrentConfig(Landroid/content/Context;)Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;->config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    .line 55
    :goto_1
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;->config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    return-object p1
.end method

.method public loadSerializedConfiguration(Landroid/content/Context;)Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/appsgeyser/multiTabApp/configuration/ObjectSerializer;

    invoke-direct {v0, p1}, Lcom/appsgeyser/multiTabApp/configuration/ObjectSerializer;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v1, Lcom/appsgeyser/multiTabApp/configuration/ObjectSerializer;

    invoke-direct {v1, p1}, Lcom/appsgeyser/multiTabApp/configuration/ObjectSerializer;-><init>(Landroid/content/Context;)V

    .line 74
    const-string p1, "widgetsController"

    invoke-virtual {v1, p1}, Lcom/appsgeyser/multiTabApp/configuration/ObjectSerializer;->loadSerializedObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    .line 75
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/appsgeyser/multiTabApp/Factory;->setWidgetsController(Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;)V

    .line 76
    const-string p1, "webWidgetConfiguration"

    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/configuration/ObjectSerializer;->loadSerializedObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    return-object p1
.end method

.method public saveConfiguration(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;Landroid/content/Context;)V
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager$1;-><init>(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;Landroid/content/Context;Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 93
    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    return-void
.end method
