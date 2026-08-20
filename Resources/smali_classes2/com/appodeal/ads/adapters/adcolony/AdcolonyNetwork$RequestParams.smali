.class public final Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork$RequestParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestParams"
.end annotation


# instance fields
.field public final adOptions:Lcom/adcolony/sdk/AdColonyAdOptions;

.field public final zoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyAdOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork$RequestParams;->zoneId:Ljava/lang/String;

    iput-object p2, p0, Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork$RequestParams;->adOptions:Lcom/adcolony/sdk/AdColonyAdOptions;

    return-void
.end method
