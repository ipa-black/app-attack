.class public final enum Lcom/google/android/gms/internal/ads/zzekp;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzekp;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzekp;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzekp;

.field public static final enum zzd:Lcom/google/android/gms/internal/ads/zzekp;

.field private static final synthetic zze:[Lcom/google/android/gms/internal/ads/zzekp;


# instance fields
.field private final zzf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzekp;

    const/4 v1, 0x0

    const-string v2, "beginToRender"

    const-string v3, "BEGIN_TO_RENDER"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzekp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzekp;->zza:Lcom/google/android/gms/internal/ads/zzekp;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzekp;

    const/4 v2, 0x1

    const-string v3, "definedByJavascript"

    .line 2
    const-string v4, "DEFINED_BY_JAVASCRIPT"

    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzekp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzekp;->zzb:Lcom/google/android/gms/internal/ads/zzekp;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzekp;

    const/4 v3, 0x2

    const-string v4, "onePixel"

    .line 3
    const-string v5, "ONE_PIXEL"

    invoke-direct {v2, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzekp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/android/gms/internal/ads/zzekp;->zzc:Lcom/google/android/gms/internal/ads/zzekp;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzekp;

    const/4 v4, 0x3

    const-string v5, "unspecified"

    .line 4
    const-string v6, "UNSPECIFIED"

    invoke-direct {v3, v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzekp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzekp;->zzd:Lcom/google/android/gms/internal/ads/zzekp;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/gms/internal/ads/zzekp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzekp;->zze:[Lcom/google/android/gms/internal/ads/zzekp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzekp;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzekp;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzekp;->zze:[Lcom/google/android/gms/internal/ads/zzekp;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzekp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzekp;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekp;->zzf:Ljava/lang/String;

    return-object v0
.end method
