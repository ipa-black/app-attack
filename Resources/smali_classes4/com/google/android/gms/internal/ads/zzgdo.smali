.class public final synthetic Lcom/google/android/gms/internal/ads/zzgdo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzgdq;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzgfb;

.field public final synthetic zzc:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgdq;Lcom/google/android/gms/internal/ads/zzgfb;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgdo;->zza:Lcom/google/android/gms/internal/ads/zzgdq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgdo;->zzb:Lcom/google/android/gms/internal/ads/zzgfb;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzgdo;->zzc:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdo;->zza:Lcom/google/android/gms/internal/ads/zzgdq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgdo;->zzb:Lcom/google/android/gms/internal/ads/zzgfb;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgdo;->zzc:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgdq;->zzx(Lcom/google/android/gms/internal/ads/zzgfb;I)V

    return-void
.end method
