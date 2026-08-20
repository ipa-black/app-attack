.class final Lio/bidmachine/SimpleContextProvider;
.super Ljava/lang/Object;
.source "SimpleContextProvider.java"

# interfaces
.implements Lio/bidmachine/ContextProvider;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/bidmachine/SimpleContextProvider;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 2

    .line 33
    invoke-virtual {p0}, Lio/bidmachine/SimpleContextProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 34
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 35
    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 37
    :cond_0
    invoke-static {}, Lio/bidmachine/BidMachineActivityManager;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lio/bidmachine/SimpleContextProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 27
    iget-object v0, p0, Lio/bidmachine/SimpleContextProvider;->context:Landroid/content/Context;

    return-object v0
.end method
