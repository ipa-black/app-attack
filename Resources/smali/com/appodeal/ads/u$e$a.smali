.class public final Lcom/appodeal/ads/u$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/u$e;->a(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    sget-object v0, Lcom/appodeal/ads/q4;->d:Lcom/appodeal/ads/TestActivity;

    .line 1
    invoke-virtual {v0}, Lcom/appodeal/ads/TestActivity;->d()V

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/TestActivity;->b()V

    return-void
.end method
