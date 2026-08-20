.class public final enum Lcom/appodeal/ads/a$b;
.super Lcom/appodeal/ads/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "right"

    const/16 v1, 0x15

    const-string v2, "RIGHT"

    const/4 v3, 0x3

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/appodeal/ads/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    sget v0, Lcom/appodeal/ads/r0;->i:I

    return v0
.end method
