.class public final Lcom/unity3d/services/identifiers/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile b:Lcom/unity3d/services/identifiers/a;


# instance fields
.field public final a:Lcom/unity3d/services/identifiers/installationid/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".v2.playerprefs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/unity3d/services/identifiers/installationid/b;

    new-instance v2, Lcom/unity3d/services/identifiers/installationid/c;

    const-string v3, "UnityInstallationId"

    invoke-direct {v2, p1, v0, v3}, Lcom/unity3d/services/identifiers/installationid/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/unity3d/services/identifiers/installationid/c;

    const-string v4, "unity.cloud_userid"

    invoke-direct {v3, p1, v0, v4}, Lcom/unity3d/services/identifiers/installationid/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/services/identifiers/installationid/c;

    const-string v4, "unityads-installinfo"

    const-string v5, "unityads-idfi"

    invoke-direct {v0, p1, v4, v5}, Lcom/unity3d/services/identifiers/installationid/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v0}, Lcom/unity3d/services/identifiers/installationid/b;-><init>(Lcom/unity3d/services/identifiers/installationid/a;Lcom/unity3d/services/identifiers/installationid/a;Lcom/unity3d/services/identifiers/installationid/a;)V

    iput-object v1, p0, Lcom/unity3d/services/identifiers/a;->a:Lcom/unity3d/services/identifiers/installationid/b;

    return-void
.end method
