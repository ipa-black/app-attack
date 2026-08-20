.class public final Lcom/appodeal/ads/regulator/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/regulator/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/regulator/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/appodeal/consent/Consent;


# direct methods
.method public constructor <init>(Lcom/appodeal/consent/Consent;)V
    .locals 1

    const-string v0, "consent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/regulator/a$a;->a:Lcom/appodeal/consent/Consent;

    return-void
.end method


# virtual methods
.method public final a()Lcom/appodeal/consent/Consent;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/regulator/a$a;->a:Lcom/appodeal/consent/Consent;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/regulator/a$a;->a:Lcom/appodeal/consent/Consent;

    invoke-virtual {v0}, Lcom/appodeal/consent/Consent;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Consent form closed. Current consent: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
