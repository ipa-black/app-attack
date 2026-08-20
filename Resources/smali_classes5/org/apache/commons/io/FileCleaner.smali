.class public Lorg/apache/commons/io/FileCleaner;
.super Ljava/lang/Object;
.source "FileCleaner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/FileCleaner$Tracker;
    }
.end annotation


# static fields
.field private static q:Ljava/lang/ref/ReferenceQueue;

.field private static reaper:Ljava/lang/Thread;

.field private static trackers:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lorg/apache/commons/io/FileCleaner;->q:Ljava/lang/ref/ReferenceQueue;

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lorg/apache/commons/io/FileCleaner;->trackers:Ljava/util/Collection;

    .line 48
    new-instance v0, Lorg/apache/commons/io/FileCleaner$1;

    const-string v1, "File Reaper"

    invoke-direct {v0, v1}, Lorg/apache/commons/io/FileCleaner$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/io/FileCleaner;->reaper:Ljava/lang/Thread;

    const/16 v1, 0xa

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 76
    sget-object v0, Lorg/apache/commons/io/FileCleaner;->reaper:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 77
    sget-object v0, Lorg/apache/commons/io/FileCleaner;->reaper:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    .line 33
    sget-object v0, Lorg/apache/commons/io/FileCleaner;->q:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Collection;
    .locals 1

    .line 33
    sget-object v0, Lorg/apache/commons/io/FileCleaner;->trackers:Ljava/util/Collection;

    return-object v0
.end method

.method public static getTrackCount()I
    .locals 1

    .line 109
    sget-object v0, Lorg/apache/commons/io/FileCleaner;->trackers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public static track(Ljava/io/File;Ljava/lang/Object;)V
    .locals 3

    .line 88
    sget-object v0, Lorg/apache/commons/io/FileCleaner;->trackers:Ljava/util/Collection;

    new-instance v1, Lorg/apache/commons/io/FileCleaner$Tracker;

    sget-object v2, Lorg/apache/commons/io/FileCleaner;->q:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p0, p1, v2}, Lorg/apache/commons/io/FileCleaner$Tracker;-><init>(Ljava/io/File;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 99
    sget-object v0, Lorg/apache/commons/io/FileCleaner;->trackers:Ljava/util/Collection;

    new-instance v1, Lorg/apache/commons/io/FileCleaner$Tracker;

    sget-object v2, Lorg/apache/commons/io/FileCleaner;->q:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p0, p1, v2}, Lorg/apache/commons/io/FileCleaner$Tracker;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method
