.class public final Lcom/appodeal/ads/regulator/b$f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/regulator/b$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/regulator/b$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/appodeal/consent/Consent;


# direct methods
.method public constructor <init>(Lcom/appodeal/consent/Consent;)V
    .locals 1

    const-string v0, "consent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/regulator/b$f$b;->a:Lcom/appodeal/consent/Consent;

    return-void
.end method


# virtual methods
.method public final a()Lcom/appodeal/consent/Consent;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/regulator/b$f$b;->a:Lcom/appodeal/consent/Consent;

    return-object v0
.end method
