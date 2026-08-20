.class public final Lcom/appodeal/ads/f2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/f2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/f2;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/f2;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/f2$a;->a:Lcom/appodeal/ads/f2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/f2$a;->a:Lcom/appodeal/ads/f2;

    iget-object v0, v0, Lcom/appodeal/ads/f2;->a:Lcom/appodeal/ads/g2;

    sget-object v1, Lcom/appodeal/ads/g2;->x:Ljava/lang/String;

    .line 1
    invoke-virtual {v0}, Lcom/appodeal/ads/g2;->a()V

    return-void
.end method
