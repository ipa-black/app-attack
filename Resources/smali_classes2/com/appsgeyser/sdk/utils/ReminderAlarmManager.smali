.class public Lcom/appsgeyser/sdk/utils/ReminderAlarmManager;
.super Ljava/lang/Object;
.source "ReminderAlarmManager.java"


# static fields
.field private static final ALARM_ID:I = 0x3e2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startReminderAlarm(Landroid/content/Context;IZ)V
    .locals 11

    .line 20
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    .line 21
    new-instance v0, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/appsgeyser/sdk/push/AlarmReceiver;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x3e2

    const/high16 v4, 0x4000000

    .line 26
    invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    const-wide/32 v2, 0x5265c00

    int-to-long p0, p1

    mul-long/2addr p0, v2

    if-eqz v1, :cond_1

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 36
    const-string v10, "appsgeyserSdk_lastReminderSetTiming"

    const-wide/32 v5, 0x5265c00

    if-eqz p2, :cond_0

    .line 37
    invoke-virtual {v1, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v2, 0x0

    add-long v3, v8, p0

    .line 38
    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 39
    invoke-virtual {v0, v10, v8, v9}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v10, v2, v3}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefLong(Ljava/lang/String;J)J

    move-result-wide v2

    const/4 p2, 0x0

    add-long v3, v2, p0

    move v2, p2

    .line 42
    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    :cond_1
    :goto_0
    return-void
.end method
