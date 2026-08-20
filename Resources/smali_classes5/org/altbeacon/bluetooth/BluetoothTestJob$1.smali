.class Lorg/altbeacon/bluetooth/BluetoothTestJob$1;
.super Ljava/lang/Object;
.source "BluetoothTestJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/altbeacon/bluetooth/BluetoothTestJob;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/altbeacon/bluetooth/BluetoothTestJob;

.field final synthetic val$params:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lorg/altbeacon/bluetooth/BluetoothTestJob;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothTestJob;

    iput-object p2, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob$1;->val$params:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 94
    invoke-static {}, Lorg/altbeacon/bluetooth/BluetoothTestJob;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth Test Job running"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob$1;->val$params:Landroid/app/job/JobParameters;

    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "test_type"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 98
    invoke-static {}, Lorg/altbeacon/bluetooth/BluetoothTestJob;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "No test specified.  Done with job."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    and-int/lit8 v4, v0, 0x1

    if-ne v4, v1, :cond_2

    .line 102
    invoke-static {}, Lorg/altbeacon/bluetooth/BluetoothTestJob;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Scan test specified."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-static {}, Lorg/altbeacon/bluetooth/BluetoothMedic;->getInstance()Lorg/altbeacon/bluetooth/BluetoothMedic;

    move-result-object v3

    iget-object v4, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothTestJob;

    invoke-virtual {v3, v4}, Lorg/altbeacon/bluetooth/BluetoothMedic;->runScanTest(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 105
    invoke-static {}, Lorg/altbeacon/bluetooth/BluetoothTestJob;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "scan test failed"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v3, v1

    :cond_2
    and-int/lit8 v4, v0, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    if-eqz v3, :cond_3

    const-wide/16 v3, 0x2710

    .line 112
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :catch_0
    :cond_3
    invoke-static {}, Lorg/altbeacon/bluetooth/BluetoothTestJob;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Transmit test specified."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-static {}, Lorg/altbeacon/bluetooth/BluetoothMedic;->getInstance()Lorg/altbeacon/bluetooth/BluetoothMedic;

    move-result-object v3

    iget-object v4, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothTestJob;

    invoke-virtual {v3, v4}, Lorg/altbeacon/bluetooth/BluetoothMedic;->runTransmitterTest(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 121
    invoke-static {}, Lorg/altbeacon/bluetooth/BluetoothTestJob;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "transmit test failed"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    move v1, v3

    :cond_5
    :goto_1
    if-nez v1, :cond_6

    .line 126
    invoke-static {}, Lorg/altbeacon/bluetooth/BluetoothTestJob;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown test type:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  Exiting."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    :cond_6
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothTestJob;

    iget-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob$1;->val$params:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, v2}, Lorg/altbeacon/bluetooth/BluetoothTestJob;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method
