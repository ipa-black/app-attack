.class public Lcom/appsgeyser/sdk/push/PushStarterReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushStarterReceiver.java"


# static fields
.field private static final ACTION_QUICKBOOT:Ljava/lang/String; = "android.intent.action.QUICKBOOT_POWERON"

.field private static final ACTION_QUICKBOOT_HTC:Ljava/lang/String; = "com.htc.intent.action.QUICKBOOT_POWERON"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 29
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.REBOOT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.htc.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 31
    :cond_0
    new-instance p2, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    invoke-direct {p2, p1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;-><init>(Landroid/content/Context;)V

    .line 32
    const-string v0, "ServerResponse"

    const/4 v1, 0x0

    .line 33
    invoke-virtual {p2, v0, v1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 36
    invoke-static {p2}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->parseFromJson(Ljava/lang/String;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p2

    .line 37
    invoke-virtual {p2}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isPushNotificationsActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    :try_start_0
    invoke-virtual {p2}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getOneSignalAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isPushNotificationsActive()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/appsgeyser/sdk/push/OneSignalCreator;->init(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    const-string v0, "OneSignalStarterRcv"

    const-string v1, "unexpected JsonSyntaxException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isInactivityReminderEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appsgeyser/sdk/push/AlarmService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    const-string v1, "days_inactivity"

    invoke-virtual {p2}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getInactivityDaysPeriod()I

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2
    return-void
.end method
