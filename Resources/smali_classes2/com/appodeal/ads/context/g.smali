.class public final Lcom/appodeal/ads/context/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/modules/common/internal/context/ContextProvider$Synchronizer;


# static fields
.field public static final b:Lcom/appodeal/ads/context/g;


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/context/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/context/g;

    invoke-direct {v0}, Lcom/appodeal/ads/context/g;-><init>()V

    sput-object v0, Lcom/appodeal/ads/context/g;->b:Lcom/appodeal/ads/context/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/appodeal/ads/context/c;->a()Lcom/appodeal/ads/context/f;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/context/g;->a:Lcom/appodeal/ads/context/f;

    return-void
.end method


# virtual methods
.method public final setActivity(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/context/g;->a:Lcom/appodeal/ads/context/f;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/context/f;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public final setApplicationContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/context/g;->a:Lcom/appodeal/ads/context/f;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/context/f;->setApplicationContext(Landroid/content/Context;)V

    return-void
.end method

.method public final setAutomaticActivityObserving(Z)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/context/g;->a:Lcom/appodeal/ads/context/f;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/context/f;->setAutomaticActivityObserving(Z)V

    return-void
.end method
