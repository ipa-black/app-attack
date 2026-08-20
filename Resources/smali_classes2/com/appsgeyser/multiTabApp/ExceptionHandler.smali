.class Lcom/appsgeyser/multiTabApp/ExceptionHandler;
.super Ljava/lang/Object;
.source "ExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final DEFAULT_EXCEPTION_HANDLER:Ljava/lang/String; = "com.appsgeyser.multiTabApp.DefaultExceptionHandler"

.field private static final IS_FIRST_FAULT:Ljava/lang/String; = "com.appsgeyser.multiTabApp.DefaultExceptionHandler.isFirstFault"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final oldHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ExceptionHandler;->activity:Landroid/app/Activity;

    .line 25
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/ExceptionHandler;->oldHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .line 30
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ExceptionHandler;->activity:Landroid/app/Activity;

    .line 31
    const-string v1, "com.appsgeyser.multiTabApp.DefaultExceptionHandler"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    .line 32
    const-string v3, "com.appsgeyser.multiTabApp.DefaultExceptionHandler.isFirstFault"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 36
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 37
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 39
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/ExceptionHandler;->activity:Landroid/app/Activity;

    const-class v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const p2, 0x14008000

    .line 41
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 44
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/ExceptionHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 45
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 46
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ExceptionHandler;->oldHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
