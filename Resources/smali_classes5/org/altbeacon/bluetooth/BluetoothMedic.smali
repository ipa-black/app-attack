.class public Lorg/altbeacon/bluetooth/BluetoothMedic;
.super Ljava/lang/Object;
.source "BluetoothMedic.java"


# static fields
.field private static final MIN_MILLIS_BETWEEN_BLUETOOTH_POWER_CYCLES:J = 0xea60L

.field public static final NO_TEST:I = 0x0

.field public static final SCAN_TEST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothMedic"

.field public static final TRANSMIT_TEST:I = 0x2

.field private static sInstance:Lorg/altbeacon/bluetooth/BluetoothMedic;


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothEventReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mLastBluetoothPowerCycleTime:J

.field private mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private mNotificationIcon:I

.field private mNotificationsEnabled:Z

.field private mScanTestResult:Ljava/lang/Boolean;

.field private mTestType:I

.field private mTransmitterTestResult:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mTestType:I

    const/4 v1, 0x0

    .line 89
    iput-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mTransmitterTestResult:Ljava/lang/Boolean;

    .line 91
    iput-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mScanTestResult:Ljava/lang/Boolean;

    .line 93
    iput-boolean v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mNotificationsEnabled:Z

    .line 94
    iput v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mNotificationIcon:I

    const-wide/16 v0, 0x0

    .line 95
    iput-wide v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mLastBluetoothPowerCycleTime:J

    .line 99
    new-instance v0, Lorg/altbeacon/bluetooth/BluetoothMedic$1;

    invoke-direct {v0, p0}, Lorg/altbeacon/bluetooth/BluetoothMedic$1;-><init>(Lorg/altbeacon/bluetooth/BluetoothMedic;)V

    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mBluetoothEventReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/altbeacon/bluetooth/BluetoothMedic;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lorg/altbeacon/bluetooth/BluetoothMedic;->sendNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/altbeacon/bluetooth/BluetoothMedic;)Z
    .locals 0

    .line 64
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothMedic;->cycleBluetoothIfNotTooSoon()Z

    move-result p0

    return p0
.end method

.method static synthetic access$302(Lorg/altbeacon/bluetooth/BluetoothMedic;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 64
    iput-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mScanTestResult:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$400(Lorg/altbeacon/bluetooth/BluetoothMedic;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .locals 0

    .line 64
    iget-object p0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    return-object p0
.end method

.method static synthetic access$500(Lorg/altbeacon/bluetooth/BluetoothMedic;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 64
    iget-object p0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mBluetoothEventReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$602(Lorg/altbeacon/bluetooth/BluetoothMedic;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 64
    iput-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mTransmitterTestResult:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$700(Lorg/altbeacon/bluetooth/BluetoothMedic;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 64
    iget-object p0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method private cycleBluetooth()V
    .locals 4

    .line 395
    sget-object v0, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Power cycling bluetooth"

    invoke-static {v0, v3, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    const-string v2, "Turning Bluetooth off."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    iget-object v2, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_0

    .line 398
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 399
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/altbeacon/bluetooth/BluetoothMedic$4;

    invoke-direct {v1, p0}, Lorg/altbeacon/bluetooth/BluetoothMedic$4;-><init>(Lorg/altbeacon/bluetooth/BluetoothMedic;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 409
    :cond_0
    const-string v2, "Cannot cycle bluetooth.  Manager is null."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private cycleBluetoothIfNotTooSoon()Z
    .locals 6

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mLastBluetoothPowerCycleTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    .line 382
    sget-object v2, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Not cycling bluetooth because we just did so "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds ago."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 386
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mLastBluetoothPowerCycleTime:J

    .line 387
    sget-object v0, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    const-string v1, "Power cycling bluetooth"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothMedic;->cycleBluetooth()V

    const/4 v0, 0x1

    return v0
.end method

.method public static getInstance()Lorg/altbeacon/bluetooth/BluetoothMedic;
    .locals 1

    .line 141
    sget-object v0, Lorg/altbeacon/bluetooth/BluetoothMedic;->sInstance:Lorg/altbeacon/bluetooth/BluetoothMedic;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lorg/altbeacon/bluetooth/BluetoothMedic;

    invoke-direct {v0}, Lorg/altbeacon/bluetooth/BluetoothMedic;-><init>()V

    sput-object v0, Lorg/altbeacon/bluetooth/BluetoothMedic;->sInstance:Lorg/altbeacon/bluetooth/BluetoothMedic;

    .line 144
    :cond_0
    sget-object v0, Lorg/altbeacon/bluetooth/BluetoothMedic;->sInstance:Lorg/altbeacon/bluetooth/BluetoothMedic;

    return-object v0
.end method

.method private initializeWithContext(Landroid/content/Context;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    if-nez v0, :cond_1

    .line 153
    :cond_0
    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    if-eqz v0, :cond_2

    .line 157
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 158
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    :cond_1
    return-void

    .line 155
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Cannot get BluetoothManager"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private scheduleRegularTests(Landroid/content/Context;)V
    .locals 4

    .line 440
    invoke-direct {p0, p1}, Lorg/altbeacon/bluetooth/BluetoothMedic;->initializeWithContext(Landroid/content/Context;)V

    .line 441
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lorg/altbeacon/bluetooth/BluetoothTestJob;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 442
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    .line 443
    invoke-static {p1}, Lorg/altbeacon/bluetooth/BluetoothTestJob;->getJobId(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v1, v2, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v0, 0x0

    .line 444
    invoke-virtual {v1, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 445
    invoke-virtual {v1, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    const-wide/32 v2, 0xdbba0

    .line 446
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    const/4 v0, 0x1

    .line 447
    invoke-virtual {v1, v0}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 448
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 449
    const-string v2, "test_type"

    iget v3, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mTestType:I

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 450
    invoke-virtual {v1, v0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 451
    const-string v0, "jobscheduler"

    .line 452
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobScheduler;

    if-eqz p1, :cond_0

    .line 454
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :cond_0
    return-void
.end method

.method private sendNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 415
    invoke-direct {p0, p1}, Lorg/altbeacon/bluetooth/BluetoothMedic;->initializeWithContext(Landroid/content/Context;)V

    .line 416
    iget-boolean v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mNotificationsEnabled:Z

    if-eqz v0, :cond_0

    .line 417
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "err"

    invoke-direct {v0, p1, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BluetoothMedic: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 419
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    iget v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mNotificationIcon:I

    .line 420
    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 421
    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 422
    invoke-static {p1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object p3

    .line 423
    new-instance v0, Landroid/content/Intent;

    const-string v1, "NoOperation"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    .line 425
    invoke-virtual {p3, v0, v1}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object p3

    .line 429
    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 430
    const-string p3, "notification"

    .line 431
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    .line 433
    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void

    :array_0
    .array-data 8
        0xc8
        0x64
        0xc8
    .end array-data
.end method


# virtual methods
.method public enablePeriodicTests(Landroid/content/Context;I)V
    .locals 3

    .line 195
    invoke-direct {p0, p1}, Lorg/altbeacon/bluetooth/BluetoothMedic;->initializeWithContext(Landroid/content/Context;)V

    .line 196
    iput p2, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mTestType:I

    .line 197
    sget-object v0, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Medic scheduling periodic tests of types "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    invoke-direct {p0, p1}, Lorg/altbeacon/bluetooth/BluetoothMedic;->scheduleRegularTests(Landroid/content/Context;)V

    return-void
.end method

.method public enablePowerCycleOnFailures(Landroid/content/Context;)V
    .locals 3

    .line 172
    invoke-direct {p0, p1}, Lorg/altbeacon/bluetooth/BluetoothMedic;->initializeWithContext(Landroid/content/Context;)V

    .line 173
    iget-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    if-eqz p1, :cond_0

    .line 174
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mBluetoothEventReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "onScanFailed"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 176
    iget-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mBluetoothEventReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "onStartFailure"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 178
    sget-object p1, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Medic monitoring for transmission and scan failure notifications with receiver: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mBluetoothEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public runScanTest(Landroid/content/Context;)Z
    .locals 10

    .line 214
    invoke-direct {p0, p1}, Lorg/altbeacon/bluetooth/BluetoothMedic;->initializeWithContext(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mScanTestResult:Ljava/lang/Boolean;

    .line 216
    sget-object v0, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Starting scan test"

    invoke-static {v0, v3, v2}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 218
    iget-object v4, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v4, :cond_3

    .line 219
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v4

    .line 220
    new-instance v5, Lorg/altbeacon/bluetooth/BluetoothMedic$2;

    invoke-direct {v5, p0, v4, p1}, Lorg/altbeacon/bluetooth/BluetoothMedic$2;-><init>(Lorg/altbeacon/bluetooth/BluetoothMedic;Landroid/bluetooth/le/BluetoothLeScanner;Landroid/content/Context;)V

    if-eqz v4, :cond_2

    .line 261
    invoke-virtual {v4, v5}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 262
    :cond_0
    iget-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mScanTestResult:Ljava/lang/Boolean;

    if-nez p1, :cond_1

    .line 263
    sget-object p1, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    const-string v0, "Waiting for scan test to complete..."

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v6}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v6, 0x3e8

    .line 266
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :catch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    const-wide/16 v8, 0x1388

    cmp-long p1, v6, v8

    if-lez p1, :cond_0

    .line 270
    sget-object p1, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    const-string v0, "Timeout running scan test"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    :cond_1
    :try_start_1
    invoke-virtual {v4, v5}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 279
    :cond_2
    const-string p1, "Cannot get scanner"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    :catch_1
    :cond_3
    :goto_0
    sget-object p1, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    const-string v0, "scan test complete"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    iget-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mScanTestResult:Ljava/lang/Boolean;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public runTransmitterTest(Landroid/content/Context;)Z
    .locals 10

    .line 302
    invoke-direct {p0, p1}, Lorg/altbeacon/bluetooth/BluetoothMedic;->initializeWithContext(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 303
    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mTransmitterTestResult:Ljava/lang/Boolean;

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 305
    iget-object v2, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 306
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 308
    new-instance v5, Landroid/bluetooth/le/AdvertiseSettings$Builder;

    invoke-direct {v5}, Landroid/bluetooth/le/AdvertiseSettings$Builder;-><init>()V

    invoke-virtual {v5, v4}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setAdvertiseMode(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->build()Landroid/bluetooth/le/AdvertiseSettings;

    move-result-object v5

    .line 309
    new-instance v6, Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-direct {v6}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    new-array v7, v3, [B

    aput-byte v4, v7, v4

    .line 310
    invoke-virtual {v6, v4, v7}, Landroid/bluetooth/le/AdvertiseData$Builder;->addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    move-result-object v6

    .line 311
    sget-object v7, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    const-string v8, "Starting transmitter test"

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    new-instance v7, Lorg/altbeacon/bluetooth/BluetoothMedic$3;

    invoke-direct {v7, p0, v2, p1}, Lorg/altbeacon/bluetooth/BluetoothMedic$3;-><init>(Lorg/altbeacon/bluetooth/BluetoothMedic;Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/content/Context;)V

    invoke-virtual {v2, v5, v6, v7}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    goto :goto_0

    .line 344
    :cond_0
    sget-object p1, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    const-string v2, "Cannot get advertiser"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p1, v2, v5}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mTransmitterTestResult:Ljava/lang/Boolean;

    if-nez p1, :cond_2

    .line 347
    sget-object p1, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    const-string v2, "Waiting for transmitter test to complete..."

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p1, v2, v5}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v5, 0x3e8

    .line 350
    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :catch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    const-wide/16 v7, 0x1388

    cmp-long p1, v5, v7

    if-lez p1, :cond_1

    .line 354
    sget-object p1, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    const-string v0, "Timeout running transmitter test"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    :cond_2
    sget-object p1, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    const-string v0, "transmitter test complete"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    iget-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mTransmitterTestResult:Ljava/lang/Boolean;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    return v3
.end method

.method public setNotificationsEnabled(ZI)V
    .locals 0

    .line 374
    iput-boolean p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mNotificationsEnabled:Z

    .line 375
    iput p2, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mNotificationIcon:I

    return-void
.end method
