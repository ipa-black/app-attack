.class public final Lcom/appodeal/ads/utils/tracker/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/utils/tracker/c;->a(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/utils/tracker/c;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/utils/tracker/c;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/utils/tracker/c$a;->a:Lcom/appodeal/ads/utils/tracker/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onLowMemory()V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/utils/tracker/c$a;->a:Lcom/appodeal/ads/utils/tracker/c;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    const-string v0, "Warning"

    const-string v1, "onLowMemory"

    invoke-static {v0, v1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/utils/tracker/c$a;->a:Lcom/appodeal/ads/utils/tracker/c;

    invoke-static {v0, p1}, Lcom/appodeal/ads/utils/tracker/c;->a(Lcom/appodeal/ads/utils/tracker/c;I)V

    return-void
.end method
