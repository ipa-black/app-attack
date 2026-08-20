.class Lcom/appsgeyser/sdk/push/OneSignalNotificationOpenedHandler;
.super Ljava/lang/Object;
.source "OneSignalNotificationOpenedHandler.java"

# interfaces
.implements Lcom/onesignal/OneSignal$OSNotificationOpenedHandler;


# static fields
.field private static final MESSAGE_KEY:Ljava/lang/String; = "msg"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/appsgeyser/sdk/push/OneSignalNotificationOpenedHandler;->context:Landroid/content/Context;

    return-void
.end method

.method private startActivity()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/appsgeyser/sdk/push/OneSignalNotificationOpenedHandler;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/appsgeyser/sdk/push/OneSignalNotificationOpenedHandler;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x200000

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 37
    iget-object v1, p0, Lcom/appsgeyser/sdk/push/OneSignalNotificationOpenedHandler;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public notificationOpened(Lcom/onesignal/OSNotificationOpenedResult;)V
    .locals 2

    .line 43
    invoke-virtual {p1}, Lcom/onesignal/OSNotificationOpenedResult;->getNotification()Lcom/onesignal/OSNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSNotification;->getAdditionalData()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/onesignal/OSNotificationOpenedResult;->getNotification()Lcom/onesignal/OSNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSNotification;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {p1}, Lcom/onesignal/OSNotificationOpenedResult;->getNotification()Lcom/onesignal/OSNotification;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onesignal/OSNotification;->getAdditionalData()Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/appsgeyser/sdk/push/OneSignalNotificationOpenedHandler;->context:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Lcom/appsgeyser/sdk/push/MessageViewer;->launchWithContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/appsgeyser/sdk/push/OneSignalNotificationOpenedHandler;->startActivity()V

    :cond_1
    :goto_0
    return-void
.end method
