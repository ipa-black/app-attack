.class public final Lcom/appodeal/ads/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/modules/common/internal/data/DeviceData;


# static fields
.field public static final a:Lcom/appodeal/ads/e1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/e1;

    invoke-direct {v0}, Lcom/appodeal/ads/e1;-><init>()V

    sput-object v0, Lcom/appodeal/ads/e1;->a:Lcom/appodeal/ads/e1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/appodeal/ads/f1;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getAppRamSize(Landroid/content/Context;)J
    .locals 2

    invoke-static {p1}, Lcom/appodeal/ads/f1;->k(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getBatteryLevel(Landroid/content/Context;)F
    .locals 0

    invoke-static {p1}, Lcom/appodeal/ads/f1;->b(Landroid/content/Context;)F

    move-result p1

    return p1
.end method

.method public final getBatteryTemperature(Landroid/content/Context;)Ljava/lang/Float;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/appodeal/ads/f1;->a:Ljava/util/HashMap;

    .line 2
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    const-string v1, "temperature"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v2, :cond_0

    int-to-float p1, p1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public final getBootTime()J
    .locals 4

    sget-object v0, Lcom/appodeal/ads/f1;->a:Ljava/util/HashMap;

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final getBrandName()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public final getChargingStatus(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/appodeal/ads/f1;->a:Ljava/util/HashMap;

    .line 2
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    const-string v1, "plugged"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public final getConnectionData(Landroid/content/Context;)Lcom/appodeal/ads/modules/common/internal/data/ConnectionData;
    .locals 0

    invoke-static {p1}, Lcom/appodeal/ads/f1;->c(Landroid/content/Context;)Lcom/appodeal/ads/modules/common/internal/data/ConnectionData;

    move-result-object p1

    return-object p1
.end method

.method public final getConnectionType(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/appodeal/ads/f1;->c(Landroid/content/Context;)Lcom/appodeal/ads/modules/common/internal/data/ConnectionData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appodeal/ads/modules/common/internal/data/ConnectionData;->getType()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getDeviceLanguage()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/f1;->a:Ljava/util/HashMap;

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/appodeal/ads/f1;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getDisplayDpi(Landroid/content/Context;)F
    .locals 0

    invoke-static {p1}, Lcom/appodeal/ads/f1;->h(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method public final getKernelVersion()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/appodeal/ads/f1;->a:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-string v1, "os.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v3, "/proc/version"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Lcom/appodeal/ads/n5;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v0, v3

    goto :goto_0

    :catchall_1
    move-exception v2

    goto :goto_0

    :catchall_2
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_0
    :try_start_3
    invoke-static {v2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-static {v0}, Lcom/appodeal/ads/n5;->a(Ljava/io/Closeable;)V

    :goto_1
    return-object v1

    :catchall_3
    move-exception v1

    invoke-static {v0}, Lcom/appodeal/ads/n5;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method public final getLowRamMemoryStatus(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lcom/appodeal/ads/f1;->s(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public final getModelId()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public final getModelName()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public final getOsBuildVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlatformName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/utils/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getScreenDensity(Landroid/content/Context;)F
    .locals 0

    invoke-static {p1}, Lcom/appodeal/ads/f1;->l(Landroid/content/Context;)F

    move-result p1

    return p1
.end method

.method public final getScreenHeight(Landroid/content/Context;)F
    .locals 0

    invoke-static {p1}, Lcom/appodeal/ads/f1;->o(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    return p1
.end method

.method public final getScreenOrientation(Landroid/content/Context;)I
    .locals 0

    invoke-static {p1}, Lcom/appodeal/ads/f1;->n(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public final getScreenWidth(Landroid/content/Context;)F
    .locals 0

    invoke-static {p1}, Lcom/appodeal/ads/f1;->o(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    return p1
.end method

.method public final getStorageFree()J
    .locals 2

    invoke-static {}, Lcom/appodeal/ads/f1;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getStorageSize()J
    .locals 2

    invoke-static {}, Lcom/appodeal/ads/f1;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSupportedAbis()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    return-object v0
.end method

.method public final getTimeStamp()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTimeZone()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/f1;->a:Ljava/util/HashMap;

    .line 1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTotalFreeRam(Landroid/content/Context;)J
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/appodeal/ads/f1;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/appodeal/ads/f1;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    goto :goto_0

    :cond_0
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/appodeal/ads/f1;->g:Ljava/lang/ref/WeakReference;

    .line 2
    :goto_0
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 3
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0
.end method

.method public final isConnected()Z
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/f1;->k()Z

    move-result v0

    return v0
.end method

.method public final isDeviceEmulator()Z
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/f1;->l()Z

    move-result v0

    return v0
.end method

.method public final isDeviceRooted()Z
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/f1;->m()Z

    move-result v0

    return v0
.end method
