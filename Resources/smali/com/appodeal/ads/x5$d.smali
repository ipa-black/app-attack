.class public final Lcom/appodeal/ads/x5$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/x5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Lcom/appodeal/ads/a;

.field public b:Lcom/appodeal/ads/f0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/appodeal/ads/f0;->c:Lcom/appodeal/ads/f0;

    iput-object v0, p0, Lcom/appodeal/ads/x5$d;->b:Lcom/appodeal/ads/f0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/x5$d;-><init>()V

    return-void
.end method
