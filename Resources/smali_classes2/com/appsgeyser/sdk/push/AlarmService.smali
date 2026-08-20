.class public Lcom/appsgeyser/sdk/push/AlarmService;
.super Landroid/app/Service;
.source "AlarmService.java"


# static fields
.field public static final DAYS_INACTIVITY:Ljava/lang/String; = "days_inactivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 16
    const-string p2, "days_inactivity"

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x0

    .line 17
    invoke-static {p0, p1, p2}, Lcom/appsgeyser/sdk/utils/ReminderAlarmManager;->startReminderAlarm(Landroid/content/Context;IZ)V

    const/4 p1, 0x2

    return p1
.end method
