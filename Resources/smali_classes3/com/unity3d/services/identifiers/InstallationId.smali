.class public final Lcom/unity3d/services/identifiers/InstallationId;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/unity3d/services/identifiers/InstallationId;",
        "",
        "",
        "a",
        "Ljava/lang/String;",
        "getId",
        "()Ljava/lang/String;",
        "id",
        "unity-services-identifiers_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x3
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/unity3d/services/identifiers/InstallationId;

.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/unity3d/services/identifiers/InstallationId;

    invoke-direct {v0}, Lcom/unity3d/services/identifiers/InstallationId;-><init>()V

    sput-object v0, Lcom/unity3d/services/identifiers/InstallationId;->INSTANCE:Lcom/unity3d/services/identifiers/InstallationId;

    .line 1
    sget-object v0, Lcom/unity3d/services/identifiers/a;->b:Lcom/unity3d/services/identifiers/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/unity3d/services/identifiers/a;->a:Lcom/unity3d/services/identifiers/installationid/b;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/unity3d/services/identifiers/installationid/b;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 4
    :cond_0
    const-string v0, ""

    :cond_1
    sput-object v0, Lcom/unity3d/services/identifiers/InstallationId;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unity3d/services/identifiers/InstallationId;->a:Ljava/lang/String;

    return-object v0
.end method
