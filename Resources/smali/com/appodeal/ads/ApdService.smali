.class public abstract Lcom/appodeal/ads/ApdService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/ApdService;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/appodeal/ads/ApdService;->version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dispatchInitialize(Landroid/content/Context;Lcom/appodeal/ads/ApdServiceInitParams;Lcom/appodeal/ads/ApdServiceInitializationListener;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/ApdService;->onInitialize(Landroid/content/Context;Lcom/appodeal/ads/ApdServiceInitParams;Lcom/appodeal/ads/ApdServiceInitializationListener;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/ApdService;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/ApdService;->version:Ljava/lang/String;

    return-object v0
.end method

.method public abstract onInitialize(Landroid/content/Context;Lcom/appodeal/ads/ApdServiceInitParams;Lcom/appodeal/ads/ApdServiceInitializationListener;)V
.end method

.method public setLogging(Z)V
    .locals 0

    return-void
.end method
