.class final Lio/bidmachine/core/ProcessPriorityThreadFactory;
.super Ljava/lang/Object;
.source "ProcessPriorityThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final threadPriority:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lio/bidmachine/core/ProcessPriorityThreadFactory;->threadPriority:I

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 17
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 18
    iget p1, p0, Lio/bidmachine/core/ProcessPriorityThreadFactory;->threadPriority:I

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 19
    new-instance p1, Lio/bidmachine/core/ProcessPriorityThreadFactory$1;

    invoke-direct {p1, p0}, Lio/bidmachine/core/ProcessPriorityThreadFactory$1;-><init>(Lio/bidmachine/core/ProcessPriorityThreadFactory;)V

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-object v0
.end method
