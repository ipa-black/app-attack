package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypePreparator;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
/* compiled from: NewCapturedType.kt */
/* loaded from: classes5.dex */
public final class NewCapturedTypeKt {
    public static final SimpleType captureFromArguments(SimpleType type, CaptureStatus status) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(status, "status");
        SimpleType simpleType = type;
        List<TypeProjection> captureArguments = captureArguments(simpleType, status);
        if (captureArguments == null) {
            return null;
        }
        return replaceArguments(simpleType, captureArguments);
    }

    private static final SimpleType replaceArguments(UnwrappedType unwrappedType, List<? extends TypeProjection> list) {
        return KotlinTypeFactory.simpleType$default(unwrappedType.getAnnotations(), unwrappedType.getConstructor(), list, unwrappedType.isMarkedNullable(), (KotlinTypeRefiner) null, 16, (Object) null);
    }

    private static final List<TypeProjection> captureArguments(UnwrappedType unwrappedType, CaptureStatus captureStatus) {
        if (unwrappedType.getArguments().size() != unwrappedType.getConstructor().getParameters().size()) {
            return null;
        }
        List<TypeProjection> arguments = unwrappedType.getArguments();
        List<TypeProjection> list = arguments;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (TypeProjection typeProjection : list) {
                if (typeProjection.getProjectionKind() != Variance.INVARIANT) {
                    List<TypeParameterDescriptor> parameters = unwrappedType.getConstructor().getParameters();
                    Intrinsics.checkNotNullExpressionValue(parameters, "type.constructor.parameters");
                    List<Pair> zip = CollectionsKt.zip(list, parameters);
                    ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(zip, 10));
                    for (Pair pair : zip) {
                        TypeProjection typeProjection2 = (TypeProjection) pair.component1();
                        TypeParameterDescriptor parameter = (TypeParameterDescriptor) pair.component2();
                        if (typeProjection2.getProjectionKind() != Variance.INVARIANT) {
                            UnwrappedType unwrap = (typeProjection2.isStarProjection() || typeProjection2.getProjectionKind() != Variance.IN_VARIANCE) ? null : typeProjection2.getType().unwrap();
                            Intrinsics.checkNotNullExpressionValue(parameter, "parameter");
                            typeProjection2 = TypeUtilsKt.asTypeProjection(new NewCapturedType(captureStatus, unwrap, typeProjection2, parameter));
                        }
                        arrayList.add(typeProjection2);
                    }
                    ArrayList arrayList2 = arrayList;
                    TypeSubstitutor buildSubstitutor = TypeConstructorSubstitution.Companion.create(unwrappedType.getConstructor(), arrayList2).buildSubstitutor();
                    int size = arguments.size();
                    int i = 0;
                    while (i < size) {
                        int i2 = i + 1;
                        TypeProjection typeProjection3 = arguments.get(i);
                        TypeProjection typeProjection4 = (TypeProjection) arrayList2.get(i);
                        if (typeProjection3.getProjectionKind() != Variance.INVARIANT) {
                            List<KotlinType> upperBounds = unwrappedType.getConstructor().getParameters().get(i).getUpperBounds();
                            Intrinsics.checkNotNullExpressionValue(upperBounds, "type.constructor.parameters[index].upperBounds");
                            ArrayList arrayList3 = new ArrayList();
                            for (KotlinType kotlinType : upperBounds) {
                                arrayList3.add(KotlinTypePreparator.Default.INSTANCE.prepareType((KotlinTypeMarker) buildSubstitutor.safeSubstitute(kotlinType, Variance.INVARIANT).unwrap()));
                            }
                            ArrayList arrayList4 = arrayList3;
                            if (!typeProjection3.isStarProjection() && typeProjection3.getProjectionKind() == Variance.OUT_VARIANCE) {
                                arrayList4.add(KotlinTypePreparator.Default.INSTANCE.prepareType((KotlinTypeMarker) typeProjection3.getType().unwrap()));
                            }
                            ((NewCapturedType) typeProjection4.getType()).getConstructor().initializeSupertypes(arrayList4);
                        }
                        i = i2;
                    }
                    return arrayList2;
                }
            }
        }
        return null;
    }
}
