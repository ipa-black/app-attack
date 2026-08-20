.class public final Lcom/appodeal/ads/regulator/a$e;
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
    name = "e"
.end annotation


# instance fields
.field public final a:Lcom/appodeal/consent/ConsentForm;


# direct methods
.method public constructor <init>(Lcom/appodeal/consent/ConsentForm;)V
    .locals 1

    const-string v0, "consentForm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/regulator/a$e;->a:Lcom/appodeal/consent/ConsentForm;

    return-void
.end method


# virtual methods
.method public final a()Lcom/appodeal/consent/ConsentForm;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/regulator/a$e;->a:Lcom/appodeal/consent/ConsentForm;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "Form loaded [consentForm: "

    invoke-static {v0}, Lcom/appodeal/ads/h0;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/appodeal/ads/regulator/a$e;->a:Lcom/appodeal/consent/ConsentForm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
