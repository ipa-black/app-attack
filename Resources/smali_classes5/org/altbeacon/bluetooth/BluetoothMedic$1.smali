.class Lorg/altbeacon/bluetooth/BluetoothMedic$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothMedic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/bluetooth/BluetoothMedic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;


# direct methods
.method constructor <init>(Lorg/altbeacon/bluetooth/BluetoothMedic;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 102
    invoke-static {}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Broadcast notification received."

    invoke-static {v0, v3, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 106
    const-string v2, "onScanFailed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "Cannot power cycle bluetooth again"

    const/4 v4, -0x1

    const-string v5, "errorCode"

    if-eqz v2, :cond_0

    .line 107
    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 109
    iget-object p2, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;

    const-string v0, "Power cycling bluetooth"

    const-string v2, "scan failed"

    invoke-static {p2, p1, v2, v0}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$100(Lorg/altbeacon/bluetooth/BluetoothMedic;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Detected a SCAN_FAILED_APPLICATION_REGISTRATION_FAILED.  We need to cycle bluetooth to recover"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, v0, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object p2, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;

    invoke-static {p2}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$200(Lorg/altbeacon/bluetooth/BluetoothMedic;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 114
    iget-object p2, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;

    invoke-static {p2, p1, v2, v3}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$100(Lorg/altbeacon/bluetooth/BluetoothMedic;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_0
    const-string v2, "onStartFailed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 121
    iget-object p2, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;

    const-string v0, "Expected failure.  Power cycling."

    const-string v1, "advertising failed"

    invoke-static {p2, p1, v1, v0}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$100(Lorg/altbeacon/bluetooth/BluetoothMedic;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object p2, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;

    invoke-static {p2}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$200(Lorg/altbeacon/bluetooth/BluetoothMedic;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 124
    iget-object p2, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;

    invoke-static {p2, p1, v1, v3}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$100(Lorg/altbeacon/bluetooth/BluetoothMedic;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_1
    invoke-static {}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unknown event."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
