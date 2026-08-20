.class public final Lcom/appodeal/ads/utils/ActivityRule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/utils/ActivityRule$Builder;,
        Lcom/appodeal/ads/utils/ActivityRule$Companion;
    }
.end annotation


# static fields
.field public static final b:Lcom/appodeal/ads/utils/ActivityRule$Companion;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/appodeal/ads/utils/ActivityRule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/ActivityRule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/appodeal/ads/utils/ActivityRule;->b:Lcom/appodeal/ads/utils/ActivityRule$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/utils/ActivityRule;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/utils/ActivityRule;->a:Ljava/lang/String;

    return-object v0
.end method
