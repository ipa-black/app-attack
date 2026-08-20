.class public final Lcom/appodeal/consent/internal/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/consent/internal/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/appodeal/consent/Consent;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/appodeal/consent/Consent;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/consent/internal/k$a;->a:Lcom/appodeal/consent/Consent;

    iput-object p2, p0, Lcom/appodeal/consent/internal/k$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/appodeal/consent/internal/k$a;->c:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final a()Lcom/appodeal/consent/Consent;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/consent/internal/k$a;->a:Lcom/appodeal/consent/Consent;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/consent/internal/k$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/consent/internal/k$a;->c:Ljava/lang/Boolean;

    return-object v0
.end method
