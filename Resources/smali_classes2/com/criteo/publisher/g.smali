.class public final Lcom/criteo/publisher/g;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const-string v0, "true"

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/criteo/publisher/g;->a:Z

    return-void
.end method
