package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMap;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyGetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationQualifierApplicabilityType;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver;
import kotlin.reflect.jvm.internal.impl.load.java.DeprecationCausedByFunctionN;
import kotlin.reflect.jvm.internal.impl.load.java.JavaDefaultQualifiers;
import kotlin.reflect.jvm.internal.impl.load.java.JavaTypeEnhancementState;
import kotlin.reflect.jvm.internal.impl.load.java.JavaTypeQualifiersByElementType;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAnnotationNamesKt;
import kotlin.reflect.jvm.internal.impl.load.java.ReportLevel;
import kotlin.reflect.jvm.internal.impl.load.java.UtilsKt;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaCallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaPropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.PossiblyExternalAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.ValueParameterData;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.ContextKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.JavaDescriptorUtilKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaTypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import kotlin.reflect.jvm.internal.impl.load.kotlin.MethodSignatureBuildingUtilsKt;
import kotlin.reflect.jvm.internal.impl.load.kotlin.MethodSignatureMappingKt;
import kotlin.reflect.jvm.internal.impl.load.kotlin.SignatureBuildingComponents;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.EnumValue;
import kotlin.reflect.jvm.internal.impl.resolve.deprecation.DeprecationKt;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.FlexibleTypeWithEnhancement;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.RawType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancementKt;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
/* compiled from: signatureEnhancement.kt */
/* loaded from: classes5.dex */
public final class SignatureEnhancement {
    private final AnnotationTypeQualifierResolver annotationTypeQualifierResolver;
    private final JavaTypeEnhancementState javaTypeEnhancementState;
    private final JavaTypeEnhancement typeEnhancement;

    public SignatureEnhancement(AnnotationTypeQualifierResolver annotationTypeQualifierResolver, JavaTypeEnhancementState javaTypeEnhancementState, JavaTypeEnhancement typeEnhancement) {
        Intrinsics.checkNotNullParameter(annotationTypeQualifierResolver, "annotationTypeQualifierResolver");
        Intrinsics.checkNotNullParameter(javaTypeEnhancementState, "javaTypeEnhancementState");
        Intrinsics.checkNotNullParameter(typeEnhancement, "typeEnhancement");
        this.annotationTypeQualifierResolver = annotationTypeQualifierResolver;
        this.javaTypeEnhancementState = javaTypeEnhancementState;
        this.typeEnhancement = typeEnhancement;
    }

    private final NullabilityQualifierWithMigrationStatus extractNullabilityTypeFromArgument(AnnotationDescriptor annotationDescriptor, boolean z) {
        ConstantValue<?> firstArgument = DescriptorUtilsKt.firstArgument(annotationDescriptor);
        EnumValue enumValue = firstArgument instanceof EnumValue ? (EnumValue) firstArgument : null;
        if (enumValue == null) {
            return new NullabilityQualifierWithMigrationStatus(NullabilityQualifier.NOT_NULL, z);
        }
        String asString = enumValue.getEnumEntryName().asString();
        switch (asString.hashCode()) {
            case 73135176:
                if (!asString.equals("MAYBE")) {
                    return null;
                }
                break;
            case 74175084:
                if (!asString.equals("NEVER")) {
                    return null;
                }
                break;
            case 433141802:
                if (asString.equals("UNKNOWN")) {
                    return new NullabilityQualifierWithMigrationStatus(NullabilityQualifier.FORCE_FLEXIBILITY, z);
                }
                return null;
            case 1933739535:
                if (asString.equals("ALWAYS")) {
                    return new NullabilityQualifierWithMigrationStatus(NullabilityQualifier.NOT_NULL, z);
                }
                return null;
            default:
                return null;
        }
        return new NullabilityQualifierWithMigrationStatus(NullabilityQualifier.NULLABLE, z);
    }

    public final NullabilityQualifierWithMigrationStatus extractNullability(AnnotationDescriptor annotationDescriptor, boolean z, boolean z2) {
        NullabilityQualifierWithMigrationStatus extractNullabilityFromKnownAnnotations;
        Intrinsics.checkNotNullParameter(annotationDescriptor, "annotationDescriptor");
        NullabilityQualifierWithMigrationStatus extractNullabilityFromKnownAnnotations2 = extractNullabilityFromKnownAnnotations(annotationDescriptor, z, z2);
        if (extractNullabilityFromKnownAnnotations2 == null) {
            AnnotationDescriptor resolveTypeQualifierAnnotation = this.annotationTypeQualifierResolver.resolveTypeQualifierAnnotation(annotationDescriptor);
            if (resolveTypeQualifierAnnotation == null) {
                return null;
            }
            ReportLevel resolveJsr305AnnotationState = this.annotationTypeQualifierResolver.resolveJsr305AnnotationState(annotationDescriptor);
            if (resolveJsr305AnnotationState.isIgnore() || (extractNullabilityFromKnownAnnotations = extractNullabilityFromKnownAnnotations(resolveTypeQualifierAnnotation, z, z2)) == null) {
                return null;
            }
            return NullabilityQualifierWithMigrationStatus.copy$default(extractNullabilityFromKnownAnnotations, null, resolveJsr305AnnotationState.isWarning(), 1, null);
        }
        return extractNullabilityFromKnownAnnotations2;
    }

    private final NullabilityQualifierWithMigrationStatus extractNullabilityFromKnownAnnotations(AnnotationDescriptor annotationDescriptor, boolean z, boolean z2) {
        FqName fqName = annotationDescriptor.getFqName();
        if (fqName == null) {
            return null;
        }
        NullabilityQualifierWithMigrationStatus commonMigrationStatus = commonMigrationStatus(fqName, annotationDescriptor, (annotationDescriptor instanceof LazyJavaAnnotationDescriptor) && (((LazyJavaAnnotationDescriptor) annotationDescriptor).isFreshlySupportedTypeUseAnnotation() || z2) && !z);
        if (commonMigrationStatus == null) {
            return null;
        }
        return (!commonMigrationStatus.isForWarningOnly() && (annotationDescriptor instanceof PossiblyExternalAnnotationDescriptor) && ((PossiblyExternalAnnotationDescriptor) annotationDescriptor).isIdeExternalAnnotation()) ? NullabilityQualifierWithMigrationStatus.copy$default(commonMigrationStatus, null, true, 1, null) : commonMigrationStatus;
    }

    private final NullabilityQualifierWithMigrationStatus commonMigrationStatus(FqName fqName, AnnotationDescriptor annotationDescriptor, boolean z) {
        ReportLevel invoke = this.javaTypeEnhancementState.getGetReportLevelForAnnotation().invoke(fqName);
        if (invoke.isIgnore()) {
            return null;
        }
        boolean z2 = invoke.isWarning() || z;
        if (JvmAnnotationNamesKt.getNULLABLE_ANNOTATIONS().contains(fqName)) {
            return new NullabilityQualifierWithMigrationStatus(NullabilityQualifier.NULLABLE, z2);
        }
        if (JvmAnnotationNamesKt.getNOT_NULL_ANNOTATIONS().contains(fqName)) {
            return new NullabilityQualifierWithMigrationStatus(NullabilityQualifier.NOT_NULL, z2);
        }
        if (Intrinsics.areEqual(fqName, JvmAnnotationNamesKt.getJSPECIFY_NULLABLE())) {
            return new NullabilityQualifierWithMigrationStatus(NullabilityQualifier.NULLABLE, z2);
        }
        if (Intrinsics.areEqual(fqName, JvmAnnotationNamesKt.getJSPECIFY_NULLNESS_UNKNOWN())) {
            return new NullabilityQualifierWithMigrationStatus(NullabilityQualifier.FORCE_FLEXIBILITY, z2);
        }
        if (Intrinsics.areEqual(fqName, JvmAnnotationNamesKt.getJAVAX_NONNULL_ANNOTATION())) {
            return extractNullabilityTypeFromArgument(annotationDescriptor, z2);
        }
        if (Intrinsics.areEqual(fqName, JvmAnnotationNamesKt.getCOMPATQUAL_NULLABLE_ANNOTATION())) {
            return new NullabilityQualifierWithMigrationStatus(NullabilityQualifier.NULLABLE, z2);
        }
        if (Intrinsics.areEqual(fqName, JvmAnnotationNamesKt.getCOMPATQUAL_NONNULL_ANNOTATION())) {
            return new NullabilityQualifierWithMigrationStatus(NullabilityQualifier.NOT_NULL, z2);
        }
        if (Intrinsics.areEqual(fqName, JvmAnnotationNamesKt.getANDROIDX_RECENTLY_NON_NULL_ANNOTATION())) {
            return new NullabilityQualifierWithMigrationStatus(NullabilityQualifier.NOT_NULL, z2);
        }
        if (Intrinsics.areEqual(fqName, JvmAnnotationNamesKt.getANDROIDX_RECENTLY_NULLABLE_ANNOTATION())) {
            return new NullabilityQualifierWithMigrationStatus(NullabilityQualifier.NULLABLE, z2);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <D extends CallableMemberDescriptor> Collection<D> enhanceSignatures(LazyJavaResolverContext c2, Collection<? extends D> platformSignatures) {
        Intrinsics.checkNotNullParameter(c2, "c");
        Intrinsics.checkNotNullParameter(platformSignatures, "platformSignatures");
        Collection<? extends D> collection = platformSignatures;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(collection, 10));
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(enhanceSignature((CallableMemberDescriptor) it.next(), c2));
        }
        return arrayList;
    }

    private final <D extends CallableMemberDescriptor> Annotations getDefaultAnnotations(D d2, LazyJavaResolverContext lazyJavaResolverContext) {
        ClassifierDescriptor topLevelContainingClassifier = DescriptorUtilKt.getTopLevelContainingClassifier(d2);
        if (topLevelContainingClassifier == null) {
            return d2.getAnnotations();
        }
        LazyJavaClassDescriptor lazyJavaClassDescriptor = topLevelContainingClassifier instanceof LazyJavaClassDescriptor ? (LazyJavaClassDescriptor) topLevelContainingClassifier : null;
        List<JavaAnnotation> moduleAnnotations = lazyJavaClassDescriptor != null ? lazyJavaClassDescriptor.getModuleAnnotations() : null;
        List<JavaAnnotation> list = moduleAnnotations;
        if (list == null || list.isEmpty()) {
            return d2.getAnnotations();
        }
        List<JavaAnnotation> list2 = moduleAnnotations;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        for (JavaAnnotation javaAnnotation : list2) {
            arrayList.add(new LazyJavaAnnotationDescriptor(lazyJavaResolverContext, javaAnnotation, true));
        }
        return Annotations.Companion.create(CollectionsKt.plus((Iterable) d2.getAnnotations(), (Iterable) arrayList));
    }

    private final <D extends CallableMemberDescriptor> D enhanceSignature(D d2, LazyJavaResolverContext lazyJavaResolverContext) {
        PropertyGetterDescriptorImpl propertyGetterDescriptorImpl;
        PartEnhancementResult partEnhancementResult;
        AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType;
        boolean z;
        JavaPropertyDescriptor javaPropertyDescriptor;
        PropertyGetterDescriptorImpl getter;
        if (d2 instanceof JavaCallableMemberDescriptor) {
            JavaCallableMemberDescriptor javaCallableMemberDescriptor = (JavaCallableMemberDescriptor) d2;
            if (javaCallableMemberDescriptor.getKind() == CallableMemberDescriptor.Kind.FAKE_OVERRIDE && javaCallableMemberDescriptor.getOriginal().getOverriddenDescriptors().size() == 1) {
                return d2;
            }
            LazyJavaResolverContext copyWithNewDefaultTypeQualifiers = ContextKt.copyWithNewDefaultTypeQualifiers(lazyJavaResolverContext, getDefaultAnnotations(d2, lazyJavaResolverContext));
            if (!(d2 instanceof JavaPropertyDescriptor) || (getter = (javaPropertyDescriptor = (JavaPropertyDescriptor) d2).getGetter()) == null || getter.isDefault()) {
                propertyGetterDescriptorImpl = d2;
            } else {
                PropertyGetterDescriptorImpl getter2 = javaPropertyDescriptor.getGetter();
                Intrinsics.checkNotNull(getter2);
                Intrinsics.checkNotNullExpressionValue(getter2, "getter!!");
                propertyGetterDescriptorImpl = getter2;
            }
            int i = 0;
            if (javaCallableMemberDescriptor.getExtensionReceiverParameter() != null) {
                FunctionDescriptor functionDescriptor = (FunctionDescriptor) (!(propertyGetterDescriptorImpl instanceof FunctionDescriptor) ? null : propertyGetterDescriptorImpl);
                partEnhancementResult = SignatureParts.enhance$default(partsForValueParameter(d2, functionDescriptor == null ? null : (ValueParameterDescriptor) functionDescriptor.getUserData(JavaMethodDescriptor.ORIGINAL_VALUE_PARAMETER_FOR_EXTENSION_RECEIVER), copyWithNewDefaultTypeQualifiers, new Function1<CallableMemberDescriptor, KotlinType>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement$enhanceSignature$receiverTypeEnhancement$1
                    @Override // kotlin.jvm.functions.Function1
                    public final KotlinType invoke(CallableMemberDescriptor it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        ReceiverParameterDescriptor extensionReceiverParameter = it.getExtensionReceiverParameter();
                        Intrinsics.checkNotNull(extensionReceiverParameter);
                        KotlinType type = extensionReceiverParameter.getType();
                        Intrinsics.checkNotNullExpressionValue(type, "it.extensionReceiverParameter!!.type");
                        return type;
                    }
                }), null, false, 3, null);
            } else {
                partEnhancementResult = null;
            }
            JavaMethodDescriptor javaMethodDescriptor = d2 instanceof JavaMethodDescriptor ? (JavaMethodDescriptor) d2 : null;
            PredefinedFunctionEnhancementInfo predefinedFunctionEnhancementInfo = javaMethodDescriptor == null ? null : PredefinedEnhancementInfoKt.getPREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE().get(MethodSignatureBuildingUtilsKt.signature(SignatureBuildingComponents.INSTANCE, (ClassDescriptor) javaMethodDescriptor.getContainingDeclaration(), MethodSignatureMappingKt.computeJvmDescriptor$default(javaMethodDescriptor, false, false, 3, null)));
            if (predefinedFunctionEnhancementInfo != null) {
                predefinedFunctionEnhancementInfo.getParametersInfo().size();
                javaCallableMemberDescriptor.getValueParameters().size();
            }
            boolean z2 = (UtilsKt.isJspecifyEnabledInStrictMode(this.javaTypeEnhancementState) || copyWithNewDefaultTypeQualifiers.getComponents().getSettings().getIgnoreNullabilityForErasedValueParameters()) && UtilsKt.hasErasedValueParameters(d2);
            List<ValueParameterDescriptor> valueParameters = propertyGetterDescriptorImpl.getValueParameters();
            Intrinsics.checkNotNullExpressionValue(valueParameters, "annotationOwnerForMember.valueParameters");
            List<ValueParameterDescriptor> list = valueParameters;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            for (final ValueParameterDescriptor valueParameterDescriptor : list) {
                arrayList.add(partsForValueParameter(d2, valueParameterDescriptor, copyWithNewDefaultTypeQualifiers, new Function1<CallableMemberDescriptor, KotlinType>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement$enhanceSignature$valueParameterEnhancements$1$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final KotlinType invoke(CallableMemberDescriptor it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        KotlinType type = it.getValueParameters().get(ValueParameterDescriptor.this.getIndex()).getType();
                        Intrinsics.checkNotNullExpressionValue(type, "it.valueParameters[p.index].type");
                        return type;
                    }
                }).enhance(predefinedFunctionEnhancementInfo == null ? null : (TypeEnhancementInfo) CollectionsKt.getOrNull(predefinedFunctionEnhancementInfo.getParametersInfo(), valueParameterDescriptor.getIndex()), z2));
            }
            ArrayList arrayList2 = arrayList;
            D d3 = propertyGetterDescriptorImpl;
            PropertyDescriptor propertyDescriptor = (PropertyDescriptor) (!(d2 instanceof PropertyDescriptor) ? null : d2);
            if (propertyDescriptor != null && JavaDescriptorUtilKt.isJavaField(propertyDescriptor)) {
                annotationQualifierApplicabilityType = AnnotationQualifierApplicabilityType.FIELD;
            } else {
                annotationQualifierApplicabilityType = AnnotationQualifierApplicabilityType.METHOD_RETURN_TYPE;
            }
            PartEnhancementResult enhance$default = SignatureParts.enhance$default(parts(d2, d3, true, copyWithNewDefaultTypeQualifiers, annotationQualifierApplicabilityType, new Function1<CallableMemberDescriptor, KotlinType>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement$enhanceSignature$returnTypeEnhancement$1
                @Override // kotlin.jvm.functions.Function1
                public final KotlinType invoke(CallableMemberDescriptor it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    KotlinType returnType = it.getReturnType();
                    Intrinsics.checkNotNull(returnType);
                    Intrinsics.checkNotNullExpressionValue(returnType, "it.returnType!!");
                    return returnType;
                }
            }), predefinedFunctionEnhancementInfo == null ? null : predefinedFunctionEnhancementInfo.getReturnTypeInfo(), false, 2, null);
            if ((partEnhancementResult != null && partEnhancementResult.getContainsFunctionN()) || enhance$default.getContainsFunctionN()) {
                z = true;
                break;
            }
            ArrayList<PartEnhancementResult> arrayList3 = arrayList2;
            if (!(arrayList3 instanceof Collection) || !arrayList3.isEmpty()) {
                for (PartEnhancementResult partEnhancementResult2 : arrayList3) {
                    if (partEnhancementResult2.getContainsFunctionN()) {
                        z = true;
                        break;
                    }
                }
            }
            z = false;
            if ((partEnhancementResult == null || !partEnhancementResult.getWereChanges()) && !enhance$default.getWereChanges()) {
                ArrayList<PartEnhancementResult> arrayList4 = arrayList2;
                if (!(arrayList4 instanceof Collection) || !arrayList4.isEmpty()) {
                    for (PartEnhancementResult partEnhancementResult3 : arrayList4) {
                        if (partEnhancementResult3.getWereChanges()) {
                            break;
                        }
                    }
                }
                if (!z) {
                    return d2;
                }
            }
            Pair<CallableDescriptor.UserDataKey<?>, ?> pair = z ? TuplesKt.to(DeprecationKt.getDEPRECATED_FUNCTION_KEY(), new DeprecationCausedByFunctionN(d2)) : null;
            KotlinType type = partEnhancementResult != null ? partEnhancementResult.getType() : null;
            ArrayList arrayList5 = arrayList2;
            ArrayList arrayList6 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList5, 10));
            for (Object obj : arrayList5) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                arrayList6.add(new ValueParameterData(((PartEnhancementResult) obj).getType(), propertyGetterDescriptorImpl.getValueParameters().get(i).declaresDefaultValue()));
                i = i2;
            }
            return javaCallableMemberDescriptor.enhance(type, arrayList6, enhance$default.getType(), pair);
        }
        return d2;
    }

    public final List<KotlinType> enhanceTypeParameterBounds(TypeParameterDescriptor typeParameterDescriptor, List<? extends KotlinType> bounds, LazyJavaResolverContext context) {
        TypeParameterDescriptor typeParameter = typeParameterDescriptor;
        Intrinsics.checkNotNullParameter(typeParameter, "typeParameter");
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        Intrinsics.checkNotNullParameter(context, "context");
        List<? extends KotlinType> list = bounds;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (KotlinType kotlinType : list) {
            if (!TypeUtilsKt.contains(kotlinType, new Function1<UnwrappedType, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement$enhanceTypeParameterBounds$1$1
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(UnwrappedType it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Boolean.valueOf(it instanceof RawType);
                }
            })) {
                kotlinType = SignatureParts.enhance$default(new SignatureParts(typeParameter, kotlinType, CollectionsKt.emptyList(), false, context, AnnotationQualifierApplicabilityType.TYPE_PARAMETER_BOUNDS, true, false, 128, null), null, false, 3, null).getType();
            }
            arrayList.add(kotlinType);
            typeParameter = typeParameterDescriptor;
        }
        return arrayList;
    }

    public final KotlinType enhanceSuperType(KotlinType type, LazyJavaResolverContext context) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(context, "context");
        return SignatureParts.enhance$default(new SignatureParts(null, type, CollectionsKt.emptyList(), false, context, AnnotationQualifierApplicabilityType.TYPE_USE, false, true, 64, null), null, false, 3, null).getType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: signatureEnhancement.kt */
    /* loaded from: classes5.dex */
    public final class SignatureParts {
        private final AnnotationQualifierApplicabilityType containerApplicabilityType;
        private final LazyJavaResolverContext containerContext;
        private final Collection<KotlinType> fromOverridden;
        private final KotlinType fromOverride;
        private final boolean isCovariant;
        private final boolean isSuperTypesEnhancement;
        private final Annotated typeContainer;
        private final boolean typeParameterBounds;

        /* JADX WARN: Multi-variable type inference failed */
        public SignatureParts(SignatureEnhancement this$0, Annotated annotated, KotlinType fromOverride, Collection<? extends KotlinType> fromOverridden, boolean z, LazyJavaResolverContext containerContext, AnnotationQualifierApplicabilityType containerApplicabilityType, boolean z2, boolean z3) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(fromOverride, "fromOverride");
            Intrinsics.checkNotNullParameter(fromOverridden, "fromOverridden");
            Intrinsics.checkNotNullParameter(containerContext, "containerContext");
            Intrinsics.checkNotNullParameter(containerApplicabilityType, "containerApplicabilityType");
            SignatureEnhancement.this = this$0;
            this.typeContainer = annotated;
            this.fromOverride = fromOverride;
            this.fromOverridden = fromOverridden;
            this.isCovariant = z;
            this.containerContext = containerContext;
            this.containerApplicabilityType = containerApplicabilityType;
            this.typeParameterBounds = z2;
            this.isSuperTypesEnhancement = z3;
        }

        public /* synthetic */ SignatureParts(Annotated annotated, KotlinType kotlinType, Collection collection, boolean z, LazyJavaResolverContext lazyJavaResolverContext, AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType, boolean z2, boolean z3, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(SignatureEnhancement.this, annotated, kotlinType, collection, z, lazyJavaResolverContext, annotationQualifierApplicabilityType, (i & 64) != 0 ? false : z2, (i & 128) != 0 ? false : z3);
        }

        private final boolean isForVarargParameter() {
            Annotated annotated = this.typeContainer;
            if (!(annotated instanceof ValueParameterDescriptor)) {
                annotated = null;
            }
            ValueParameterDescriptor valueParameterDescriptor = (ValueParameterDescriptor) annotated;
            return (valueParameterDescriptor != null ? valueParameterDescriptor.getVarargElementType() : null) != null;
        }

        public static /* synthetic */ PartEnhancementResult enhance$default(SignatureParts signatureParts, TypeEnhancementInfo typeEnhancementInfo, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                typeEnhancementInfo = null;
            }
            if ((i & 2) != 0) {
                z = false;
            }
            return signatureParts.enhance(typeEnhancementInfo, z);
        }

        public final PartEnhancementResult enhance(final TypeEnhancementInfo typeEnhancementInfo, boolean z) {
            boolean contains;
            final Function1<Integer, JavaTypeQualifiers> computeIndexedQualifiersForOverride = computeIndexedQualifiersForOverride(z);
            Function1<Integer, JavaTypeQualifiers> function1 = typeEnhancementInfo == null ? null : new Function1<Integer, JavaTypeQualifiers>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement$SignatureParts$enhance$qualifiersWithPredefined$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ JavaTypeQualifiers invoke(Integer num) {
                    return invoke(num.intValue());
                }

                public final JavaTypeQualifiers invoke(int i) {
                    JavaTypeQualifiers javaTypeQualifiers = TypeEnhancementInfo.this.getMap().get(Integer.valueOf(i));
                    return javaTypeQualifiers == null ? computeIndexedQualifiersForOverride.invoke(Integer.valueOf(i)) : javaTypeQualifiers;
                }
            };
            if (this.isSuperTypesEnhancement) {
                contains = TypeUtils.containsStoppingAt(this.fromOverride, SignatureEnhancement$SignatureParts$enhance$containsFunctionN$1.INSTANCE, new Function1<KotlinType, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement$SignatureParts$enhance$containsFunctionN$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Boolean invoke(KotlinType kotlinType) {
                        return Boolean.valueOf(kotlinType instanceof RawType);
                    }
                });
            } else {
                contains = TypeUtils.contains(this.fromOverride, SignatureEnhancement$SignatureParts$enhance$containsFunctionN$3.INSTANCE);
            }
            JavaTypeEnhancement javaTypeEnhancement = SignatureEnhancement.this.typeEnhancement;
            KotlinType kotlinType = this.fromOverride;
            if (function1 != null) {
                computeIndexedQualifiersForOverride = function1;
            }
            KotlinType enhance = javaTypeEnhancement.enhance(kotlinType, computeIndexedQualifiersForOverride, this.isSuperTypesEnhancement);
            if (enhance != null) {
                return new PartEnhancementResult(enhance, true, contains);
            }
            return new PartEnhancementResult(this.fromOverride, false, contains);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean enhance$containsFunctionN(UnwrappedType unwrappedType) {
            ClassifierDescriptor mo1763getDeclarationDescriptor = unwrappedType.getConstructor().mo1763getDeclarationDescriptor();
            return mo1763getDeclarationDescriptor != null && Intrinsics.areEqual(mo1763getDeclarationDescriptor.getName(), JavaToKotlinClassMap.INSTANCE.getFUNCTION_N_FQ_NAME().shortName()) && Intrinsics.areEqual(DescriptorUtilsKt.fqNameOrNull(mo1763getDeclarationDescriptor), JavaToKotlinClassMap.INSTANCE.getFUNCTION_N_FQ_NAME());
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x004b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeQualifiers extractQualifiers(kotlin.reflect.jvm.internal.impl.types.KotlinType r12) {
            /*
                r11 = this;
                boolean r0 = kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt.isFlexible(r12)
                if (r0 == 0) goto L18
                kotlin.reflect.jvm.internal.impl.types.FlexibleType r0 = kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt.asFlexibleType(r12)
                kotlin.Pair r1 = new kotlin.Pair
                kotlin.reflect.jvm.internal.impl.types.SimpleType r2 = r0.getLowerBound()
                kotlin.reflect.jvm.internal.impl.types.SimpleType r0 = r0.getUpperBound()
                r1.<init>(r2, r0)
                goto L1d
            L18:
                kotlin.Pair r1 = new kotlin.Pair
                r1.<init>(r12, r12)
            L1d:
                java.lang.Object r0 = r1.component1()
                kotlin.reflect.jvm.internal.impl.types.KotlinType r0 = (kotlin.reflect.jvm.internal.impl.types.KotlinType) r0
                java.lang.Object r1 = r1.component2()
                kotlin.reflect.jvm.internal.impl.types.KotlinType r1 = (kotlin.reflect.jvm.internal.impl.types.KotlinType) r1
                kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMapper r2 = kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMapper.INSTANCE
                kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeQualifiers r10 = new kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeQualifiers
                boolean r3 = r0.isMarkedNullable()
                r4 = 0
                if (r3 == 0) goto L38
                kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier r3 = kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier.NULLABLE
            L36:
                r5 = r3
                goto L42
            L38:
                boolean r3 = r1.isMarkedNullable()
                if (r3 != 0) goto L41
                kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier r3 = kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier.NOT_NULL
                goto L36
            L41:
                r5 = r4
            L42:
                boolean r0 = r2.isReadOnly(r0)
                if (r0 == 0) goto L4b
                kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.MutabilityQualifier r0 = kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.MutabilityQualifier.READ_ONLY
                goto L55
            L4b:
                boolean r0 = r2.isMutable(r1)
                if (r0 == 0) goto L54
                kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.MutabilityQualifier r0 = kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.MutabilityQualifier.MUTABLE
                goto L55
            L54:
                r0 = r4
            L55:
                kotlin.reflect.jvm.internal.impl.types.UnwrappedType r1 = r12.unwrap()
                boolean r1 = r1 instanceof kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NotNullTypeParameter
                if (r1 != 0) goto L68
                kotlin.reflect.jvm.internal.impl.types.UnwrappedType r12 = r12.unwrap()
                boolean r12 = r12 instanceof kotlin.reflect.jvm.internal.impl.types.DefinitelyNotNullType
                if (r12 == 0) goto L66
                goto L68
            L66:
                r12 = 0
                goto L69
            L68:
                r12 = 1
            L69:
                r6 = r12
                r8 = 8
                r9 = 0
                r7 = 0
                r3 = r10
                r4 = r5
                r5 = r0
                r3.<init>(r4, r5, r6, r7, r8, r9)
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement.SignatureParts.extractQualifiers(kotlin.reflect.jvm.internal.impl.types.KotlinType):kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeQualifiers");
        }

        private final JavaTypeQualifiers extractQualifiersFromAnnotations(KotlinType kotlinType, boolean z, JavaDefaultQualifiers javaDefaultQualifiers, TypeParameterDescriptor typeParameterDescriptor, boolean z2) {
            Annotations annotations;
            Annotated annotated;
            Annotated annotated2;
            if (z2) {
                if ((typeParameterDescriptor == null ? null : typeParameterDescriptor.getVariance()) == Variance.IN_VARIANCE) {
                    return JavaTypeQualifiers.Companion.getNONE();
                }
            }
            boolean typeEnhancementImprovementsInStrictMode = this.containerContext.getComponents().getSettings().getTypeEnhancementImprovementsInStrictMode();
            if (z && (annotated2 = this.typeContainer) != null && !(annotated2 instanceof TypeParameterDescriptor) && typeEnhancementImprovementsInStrictMode) {
                SignatureEnhancement signatureEnhancement = SignatureEnhancement.this;
                ArrayList arrayList = new ArrayList();
                for (AnnotationDescriptor annotationDescriptor : annotated2.getAnnotations()) {
                    AnnotationTypeQualifierResolver.TypeQualifierWithApplicability resolveAnnotation = signatureEnhancement.annotationTypeQualifierResolver.resolveAnnotation(annotationDescriptor);
                    if (resolveAnnotation == null || !resolveAnnotation.component2().contains(AnnotationQualifierApplicabilityType.TYPE_USE)) {
                        arrayList.add(annotationDescriptor);
                    }
                }
                annotations = AnnotationsKt.composeAnnotations(Annotations.Companion.create(arrayList), kotlinType.getAnnotations());
            } else if (z && (annotated = this.typeContainer) != null) {
                annotations = AnnotationsKt.composeAnnotations(annotated.getAnnotations(), kotlinType.getAnnotations());
            } else {
                annotations = kotlinType.getAnnotations();
            }
            if (z) {
                JavaTypeQualifiersByElementType defaultTypeQualifiers = this.containerContext.getDefaultTypeQualifiers();
                javaDefaultQualifiers = defaultTypeQualifiers == null ? null : defaultTypeQualifiers.get(this.containerApplicabilityType);
            }
            Pair<NullabilityQualifierWithMigrationStatus, Boolean> nullabilityInfoBoundsForTypeParameterUsage = nullabilityInfoBoundsForTypeParameterUsage(kotlinType);
            NullabilityQualifierWithMigrationStatus component1 = nullabilityInfoBoundsForTypeParameterUsage.component1();
            boolean booleanValue = nullabilityInfoBoundsForTypeParameterUsage.component2().booleanValue();
            NullabilityQualifierWithMigrationStatus extractNullability = extractNullability(annotations, typeEnhancementImprovementsInStrictMode, this.typeParameterBounds);
            if (extractNullability == null || z2) {
                extractNullability = null;
            }
            NullabilityQualifierWithMigrationStatus computeNullabilityInfoInTheAbsenceOfExplicitAnnotation = extractNullability == null ? computeNullabilityInfoInTheAbsenceOfExplicitAnnotation(component1, javaDefaultQualifiers, typeParameterDescriptor) : extractNullability;
            boolean z3 = false;
            boolean z4 = extractNullability == null ? booleanValue || (javaDefaultQualifiers != null && javaDefaultQualifiers.getDefinitelyNotNull()) : extractNullability.getQualifier() == NullabilityQualifier.NOT_NULL;
            NullabilityQualifier qualifier = computeNullabilityInfoInTheAbsenceOfExplicitAnnotation != null ? computeNullabilityInfoInTheAbsenceOfExplicitAnnotation.getQualifier() : null;
            MutabilityQualifier mutabilityQualifier = (MutabilityQualifier) extractQualifiersFromAnnotations$uniqueNotNull(extractQualifiersFromAnnotations$ifPresent(JvmAnnotationNamesKt.getREAD_ONLY_ANNOTATIONS(), annotations, MutabilityQualifier.READ_ONLY), extractQualifiersFromAnnotations$ifPresent(JvmAnnotationNamesKt.getMUTABLE_ANNOTATIONS(), annotations, MutabilityQualifier.MUTABLE));
            boolean z5 = z4 && TypeUtilsKt.isTypeParameter(kotlinType);
            if (computeNullabilityInfoInTheAbsenceOfExplicitAnnotation != null && computeNullabilityInfoInTheAbsenceOfExplicitAnnotation.isForWarningOnly()) {
                z3 = true;
            }
            return new JavaTypeQualifiers(qualifier, mutabilityQualifier, z5, z3);
        }

        private static final <T> T extractQualifiersFromAnnotations$ifPresent(List<FqName> list, Annotations annotations, T t) {
            List<FqName> list2 = list;
            if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                for (FqName fqName : list2) {
                    if (annotations.mo1757findAnnotation(fqName) != null) {
                        return t;
                    }
                }
            }
            return null;
        }

        private static final <T> T extractQualifiersFromAnnotations$uniqueNotNull(T t, T t2) {
            if (t == null || t2 == null || Intrinsics.areEqual(t, t2)) {
                return t == null ? t2 : t;
            }
            return null;
        }

        private final NullabilityQualifierWithMigrationStatus computeNullabilityInfoInTheAbsenceOfExplicitAnnotation(NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatus, JavaDefaultQualifiers javaDefaultQualifiers, TypeParameterDescriptor typeParameterDescriptor) {
            NullabilityQualifierWithMigrationStatus boundsNullability;
            NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatus2 = null;
            if (nullabilityQualifierWithMigrationStatus == null) {
                nullabilityQualifierWithMigrationStatus = javaDefaultQualifiers == null ? null : javaDefaultQualifiers.getNullabilityQualifier();
            }
            if (typeParameterDescriptor != null && (boundsNullability = boundsNullability(typeParameterDescriptor)) != null) {
                if (boundsNullability.getQualifier() == NullabilityQualifier.NULLABLE) {
                    boundsNullability = NullabilityQualifierWithMigrationStatus.copy$default(boundsNullability, NullabilityQualifier.FORCE_FLEXIBILITY, false, 2, null);
                }
                nullabilityQualifierWithMigrationStatus2 = boundsNullability;
            }
            return mostSpecific(nullabilityQualifierWithMigrationStatus2, nullabilityQualifierWithMigrationStatus);
        }

        private final NullabilityQualifierWithMigrationStatus mostSpecific(NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatus, NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatus2) {
            return nullabilityQualifierWithMigrationStatus == null ? nullabilityQualifierWithMigrationStatus2 : nullabilityQualifierWithMigrationStatus2 == null ? nullabilityQualifierWithMigrationStatus : (!nullabilityQualifierWithMigrationStatus.isForWarningOnly() || nullabilityQualifierWithMigrationStatus2.isForWarningOnly()) ? (nullabilityQualifierWithMigrationStatus.isForWarningOnly() || !nullabilityQualifierWithMigrationStatus2.isForWarningOnly()) ? (nullabilityQualifierWithMigrationStatus.getQualifier().compareTo(nullabilityQualifierWithMigrationStatus2.getQualifier()) >= 0 && nullabilityQualifierWithMigrationStatus.getQualifier().compareTo(nullabilityQualifierWithMigrationStatus2.getQualifier()) > 0) ? nullabilityQualifierWithMigrationStatus : nullabilityQualifierWithMigrationStatus2 : nullabilityQualifierWithMigrationStatus : nullabilityQualifierWithMigrationStatus2;
        }

        private final Pair<NullabilityQualifierWithMigrationStatus, Boolean> nullabilityInfoBoundsForTypeParameterUsage(KotlinType kotlinType) {
            ClassifierDescriptor mo1763getDeclarationDescriptor = kotlinType.getConstructor().mo1763getDeclarationDescriptor();
            TypeParameterDescriptor typeParameterDescriptor = mo1763getDeclarationDescriptor instanceof TypeParameterDescriptor ? (TypeParameterDescriptor) mo1763getDeclarationDescriptor : null;
            NullabilityQualifierWithMigrationStatus boundsNullability = typeParameterDescriptor == null ? null : boundsNullability(typeParameterDescriptor);
            if (boundsNullability == null) {
                return new Pair<>(null, false);
            }
            return new Pair<>(new NullabilityQualifierWithMigrationStatus(NullabilityQualifier.NOT_NULL, boundsNullability.isForWarningOnly()), Boolean.valueOf(boundsNullability.getQualifier() == NullabilityQualifier.NOT_NULL));
        }

        private final NullabilityQualifierWithMigrationStatus boundsNullability(TypeParameterDescriptor typeParameterDescriptor) {
            boolean isNullabilityFlexible;
            NullabilityQualifier nullabilityQualifier;
            if (typeParameterDescriptor instanceof LazyJavaTypeParameterDescriptor) {
                LazyJavaTypeParameterDescriptor lazyJavaTypeParameterDescriptor = (LazyJavaTypeParameterDescriptor) typeParameterDescriptor;
                List<KotlinType> upperBounds = lazyJavaTypeParameterDescriptor.getUpperBounds();
                Intrinsics.checkNotNullExpressionValue(upperBounds, "upperBounds");
                List<KotlinType> list = upperBounds;
                if (!(list instanceof Collection) || !list.isEmpty()) {
                    Iterator<T> it = list.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        } else if (!KotlinTypeKt.isError((KotlinType) it.next())) {
                            List<KotlinType> upperBounds2 = lazyJavaTypeParameterDescriptor.getUpperBounds();
                            Intrinsics.checkNotNullExpressionValue(upperBounds2, "upperBounds");
                            List<KotlinType> list2 = upperBounds2;
                            if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                                for (KotlinType kotlinType : list2) {
                                    isNullabilityFlexible = SignatureEnhancementKt.isNullabilityFlexible(kotlinType);
                                    if (!isNullabilityFlexible) {
                                        List<KotlinType> upperBounds3 = lazyJavaTypeParameterDescriptor.getUpperBounds();
                                        Intrinsics.checkNotNullExpressionValue(upperBounds3, "upperBounds");
                                        List<KotlinType> list3 = upperBounds3;
                                        if (!(list3 instanceof Collection) || !list3.isEmpty()) {
                                            for (KotlinType it2 : list3) {
                                                Intrinsics.checkNotNullExpressionValue(it2, "it");
                                                if (!KotlinTypeKt.isNullable(it2)) {
                                                    nullabilityQualifier = NullabilityQualifier.NOT_NULL;
                                                    break;
                                                }
                                            }
                                        }
                                        nullabilityQualifier = NullabilityQualifier.NULLABLE;
                                        return new NullabilityQualifierWithMigrationStatus(nullabilityQualifier, false, 2, null);
                                    }
                                }
                            }
                            List<KotlinType> upperBounds4 = lazyJavaTypeParameterDescriptor.getUpperBounds();
                            Intrinsics.checkNotNullExpressionValue(upperBounds4, "upperBounds");
                            List<KotlinType> list4 = upperBounds4;
                            if (!(list4 instanceof Collection) || !list4.isEmpty()) {
                                for (KotlinType kotlinType2 : list4) {
                                    if ((kotlinType2 instanceof FlexibleTypeWithEnhancement) && !KotlinTypeKt.isNullable(((FlexibleTypeWithEnhancement) kotlinType2).getEnhancement())) {
                                        return new NullabilityQualifierWithMigrationStatus(NullabilityQualifier.NOT_NULL, true);
                                    }
                                }
                            }
                            List<KotlinType> upperBounds5 = lazyJavaTypeParameterDescriptor.getUpperBounds();
                            Intrinsics.checkNotNullExpressionValue(upperBounds5, "upperBounds");
                            List<KotlinType> list5 = upperBounds5;
                            if (!(list5 instanceof Collection) || !list5.isEmpty()) {
                                for (KotlinType kotlinType3 : list5) {
                                    if ((kotlinType3 instanceof FlexibleTypeWithEnhancement) && KotlinTypeKt.isNullable(((FlexibleTypeWithEnhancement) kotlinType3).getEnhancement())) {
                                        return new NullabilityQualifierWithMigrationStatus(NullabilityQualifier.NULLABLE, true);
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return null;
        }

        private final NullabilityQualifierWithMigrationStatus extractNullability(Annotations annotations, boolean z, boolean z2) {
            SignatureEnhancement signatureEnhancement = SignatureEnhancement.this;
            Iterator<AnnotationDescriptor> it = annotations.iterator();
            NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatus = null;
            while (it.hasNext()) {
                NullabilityQualifierWithMigrationStatus extractNullability = signatureEnhancement.extractNullability(it.next(), z, z2);
                if (nullabilityQualifierWithMigrationStatus != null) {
                    if (extractNullability != null && !Intrinsics.areEqual(extractNullability, nullabilityQualifierWithMigrationStatus) && (!extractNullability.isForWarningOnly() || nullabilityQualifierWithMigrationStatus.isForWarningOnly())) {
                        if (extractNullability.isForWarningOnly() || !nullabilityQualifierWithMigrationStatus.isForWarningOnly()) {
                            return null;
                        }
                    }
                }
                nullabilityQualifierWithMigrationStatus = extractNullability;
            }
            return nullabilityQualifierWithMigrationStatus;
        }

        private final Function1<Integer, JavaTypeQualifiers> computeIndexedQualifiersForOverride(boolean z) {
            boolean z2;
            Collection<KotlinType> collection = this.fromOverridden;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(collection, 10));
            for (KotlinType kotlinType : collection) {
                arrayList.add(toIndexed(kotlinType));
            }
            ArrayList<List> arrayList2 = arrayList;
            List<TypeAndDefaultQualifiers> indexed = toIndexed(this.fromOverride);
            if (this.isCovariant) {
                Collection<KotlinType> collection2 = this.fromOverridden;
                if (!(collection2 instanceof Collection) || !collection2.isEmpty()) {
                    for (KotlinType kotlinType2 : collection2) {
                        if (!KotlinTypeChecker.DEFAULT.equalTypes(kotlinType2, this.fromOverride)) {
                            z2 = true;
                            break;
                        }
                    }
                }
            }
            z2 = false;
            int size = z2 ? 1 : indexed.size();
            final JavaTypeQualifiers[] javaTypeQualifiersArr = new JavaTypeQualifiers[size];
            int i = 0;
            while (i < size) {
                boolean z3 = i == 0;
                TypeAndDefaultQualifiers typeAndDefaultQualifiers = indexed.get(i);
                KotlinType component1 = typeAndDefaultQualifiers.component1();
                JavaDefaultQualifiers component2 = typeAndDefaultQualifiers.component2();
                TypeParameterDescriptor component3 = typeAndDefaultQualifiers.component3();
                boolean component4 = typeAndDefaultQualifiers.component4();
                ArrayList arrayList3 = new ArrayList();
                for (List list : arrayList2) {
                    TypeAndDefaultQualifiers typeAndDefaultQualifiers2 = (TypeAndDefaultQualifiers) CollectionsKt.getOrNull(list, i);
                    KotlinType type = typeAndDefaultQualifiers2 == null ? null : typeAndDefaultQualifiers2.getType();
                    if (type != null) {
                        arrayList3.add(type);
                    }
                }
                int i2 = i;
                javaTypeQualifiersArr[i2] = computeQualifiersForOverride(component1, arrayList3, component2, z3, component3, component4, z);
                i = i2 + 1;
            }
            return new Function1<Integer, JavaTypeQualifiers>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement$SignatureParts$computeIndexedQualifiersForOverride$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ JavaTypeQualifiers invoke(Integer num) {
                    return invoke(num.intValue());
                }

                public final JavaTypeQualifiers invoke(int i3) {
                    JavaTypeQualifiers[] javaTypeQualifiersArr2 = javaTypeQualifiersArr;
                    return (i3 < 0 || i3 > ArraysKt.getLastIndex(javaTypeQualifiersArr2)) ? JavaTypeQualifiers.Companion.getNONE() : javaTypeQualifiersArr2[i3];
                }
            };
        }

        private final List<TypeAndDefaultQualifiers> toIndexed(KotlinType kotlinType) {
            ArrayList arrayList = new ArrayList(1);
            toIndexed$add(this, arrayList, kotlinType, this.containerContext, null);
            return arrayList;
        }

        private static final void toIndexed$add(SignatureParts signatureParts, ArrayList<TypeAndDefaultQualifiers> arrayList, KotlinType kotlinType, LazyJavaResolverContext lazyJavaResolverContext, TypeParameterDescriptor typeParameterDescriptor) {
            AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType;
            JavaDefaultQualifiers javaDefaultQualifiers;
            LazyJavaResolverContext copyWithNewDefaultTypeQualifiers = ContextKt.copyWithNewDefaultTypeQualifiers(lazyJavaResolverContext, kotlinType.getAnnotations());
            JavaTypeQualifiersByElementType defaultTypeQualifiers = copyWithNewDefaultTypeQualifiers.getDefaultTypeQualifiers();
            if (defaultTypeQualifiers == null) {
                javaDefaultQualifiers = null;
            } else {
                if (signatureParts.typeParameterBounds) {
                    annotationQualifierApplicabilityType = AnnotationQualifierApplicabilityType.TYPE_PARAMETER_BOUNDS;
                } else {
                    annotationQualifierApplicabilityType = AnnotationQualifierApplicabilityType.TYPE_USE;
                }
                javaDefaultQualifiers = defaultTypeQualifiers.get(annotationQualifierApplicabilityType);
            }
            arrayList.add(new TypeAndDefaultQualifiers(kotlinType, javaDefaultQualifiers, typeParameterDescriptor, false));
            if (signatureParts.isSuperTypesEnhancement && (kotlinType instanceof RawType)) {
                return;
            }
            List<TypeParameterDescriptor> parameters = kotlinType.getConstructor().getParameters();
            Intrinsics.checkNotNullExpressionValue(parameters, "type.constructor.parameters");
            for (Pair pair : CollectionsKt.zip(kotlinType.getArguments(), parameters)) {
                TypeProjection typeProjection = (TypeProjection) pair.component1();
                TypeParameterDescriptor typeParameterDescriptor2 = (TypeParameterDescriptor) pair.component2();
                if (typeProjection.isStarProjection()) {
                    KotlinType type = typeProjection.getType();
                    Intrinsics.checkNotNullExpressionValue(type, "arg.type");
                    arrayList.add(new TypeAndDefaultQualifiers(type, javaDefaultQualifiers, typeParameterDescriptor2, true));
                } else {
                    KotlinType type2 = typeProjection.getType();
                    Intrinsics.checkNotNullExpressionValue(type2, "arg.type");
                    toIndexed$add(signatureParts, arrayList, type2, copyWithNewDefaultTypeQualifiers, typeParameterDescriptor2);
                }
            }
        }

        private final JavaTypeQualifiers computeQualifiersForOverride(KotlinType kotlinType, Collection<? extends KotlinType> collection, JavaDefaultQualifiers javaDefaultQualifiers, boolean z, TypeParameterDescriptor typeParameterDescriptor, boolean z2, boolean z3) {
            boolean z4;
            Collection<? extends KotlinType> collection2 = collection;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(collection2, 10));
            for (KotlinType kotlinType2 : collection2) {
                arrayList.add(extractQualifiers(kotlinType2));
            }
            ArrayList<JavaTypeQualifiers> arrayList2 = arrayList;
            ArrayList arrayList3 = new ArrayList();
            for (JavaTypeQualifiers javaTypeQualifiers : arrayList2) {
                MutabilityQualifier mutability = javaTypeQualifiers.getMutability();
                if (mutability != null) {
                    arrayList3.add(mutability);
                }
            }
            Set set = CollectionsKt.toSet(arrayList3);
            ArrayList arrayList4 = new ArrayList();
            for (JavaTypeQualifiers javaTypeQualifiers2 : arrayList2) {
                NullabilityQualifier nullability = javaTypeQualifiers2.getNullability();
                if (nullability != null) {
                    arrayList4.add(nullability);
                }
            }
            Set set2 = CollectionsKt.toSet(arrayList4);
            ArrayList arrayList5 = new ArrayList();
            for (KotlinType kotlinType3 : collection2) {
                NullabilityQualifier nullability2 = extractQualifiers(TypeWithEnhancementKt.unwrapEnhancement(kotlinType3)).getNullability();
                if (nullability2 != null) {
                    arrayList5.add(nullability2);
                }
            }
            Set set3 = CollectionsKt.toSet(arrayList5);
            JavaTypeQualifiers extractQualifiersFromAnnotations = extractQualifiersFromAnnotations(kotlinType, z, javaDefaultQualifiers, typeParameterDescriptor, z2);
            NullabilityQualifier nullabilityQualifier = null;
            JavaTypeQualifiers javaTypeQualifiers3 = extractQualifiersFromAnnotations.isNullabilityQualifierForWarning() ^ true ? extractQualifiersFromAnnotations : null;
            NullabilityQualifier nullability3 = javaTypeQualifiers3 == null ? null : javaTypeQualifiers3.getNullability();
            NullabilityQualifier nullability4 = extractQualifiersFromAnnotations.getNullability();
            boolean z5 = this.isCovariant && z;
            NullabilityQualifier select = TypeEnhancementUtilsKt.select(set2, nullability3, z5);
            if (select != null && !z3 && (!isForVarargParameter() || !z || select != NullabilityQualifier.NULLABLE)) {
                nullabilityQualifier = select;
            }
            MutabilityQualifier mutabilityQualifier = (MutabilityQualifier) TypeEnhancementUtilsKt.select(set, MutabilityQualifier.MUTABLE, MutabilityQualifier.READ_ONLY, extractQualifiersFromAnnotations.getMutability(), z5);
            boolean z6 = (nullability4 == nullability3 && Intrinsics.areEqual(set3, set2)) ? false : true;
            if (extractQualifiersFromAnnotations.getDefinitelyNotNull()) {
                z4 = true;
                break;
            }
            if (!(arrayList2 instanceof Collection) || !arrayList2.isEmpty()) {
                for (JavaTypeQualifiers javaTypeQualifiers4 : arrayList2) {
                    if (javaTypeQualifiers4.getDefinitelyNotNull()) {
                        z4 = true;
                        break;
                    }
                }
            }
            z4 = false;
            if (nullabilityQualifier == null && z6) {
                return TypeEnhancementUtilsKt.createJavaTypeQualifiers(TypeEnhancementUtilsKt.select(set3, nullability4, z5), mutabilityQualifier, true, z4);
            }
            return TypeEnhancementUtilsKt.createJavaTypeQualifiers(nullabilityQualifier, mutabilityQualifier, nullabilityQualifier == null, z4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: signatureEnhancement.kt */
    /* loaded from: classes5.dex */
    public static class PartEnhancementResult {
        private final boolean containsFunctionN;
        private final KotlinType type;
        private final boolean wereChanges;

        public PartEnhancementResult(KotlinType type, boolean z, boolean z2) {
            Intrinsics.checkNotNullParameter(type, "type");
            this.type = type;
            this.wereChanges = z;
            this.containsFunctionN = z2;
        }

        public final KotlinType getType() {
            return this.type;
        }

        public final boolean getWereChanges() {
            return this.wereChanges;
        }

        public final boolean getContainsFunctionN() {
            return this.containsFunctionN;
        }
    }

    private final SignatureParts partsForValueParameter(CallableMemberDescriptor callableMemberDescriptor, ValueParameterDescriptor valueParameterDescriptor, LazyJavaResolverContext lazyJavaResolverContext, Function1<? super CallableMemberDescriptor, ? extends KotlinType> function1) {
        ValueParameterDescriptor valueParameterDescriptor2 = valueParameterDescriptor;
        if (valueParameterDescriptor != null) {
            lazyJavaResolverContext = ContextKt.copyWithNewDefaultTypeQualifiers(lazyJavaResolverContext, valueParameterDescriptor.getAnnotations());
        }
        return parts(callableMemberDescriptor, valueParameterDescriptor2, false, lazyJavaResolverContext, AnnotationQualifierApplicabilityType.VALUE_PARAMETER, function1);
    }

    private final SignatureParts parts(CallableMemberDescriptor callableMemberDescriptor, Annotated annotated, boolean z, LazyJavaResolverContext lazyJavaResolverContext, AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType, Function1<? super CallableMemberDescriptor, ? extends KotlinType> function1) {
        KotlinType invoke = function1.invoke(callableMemberDescriptor);
        Collection<? extends CallableMemberDescriptor> overriddenDescriptors = callableMemberDescriptor.getOverriddenDescriptors();
        Intrinsics.checkNotNullExpressionValue(overriddenDescriptors, "this.overriddenDescriptors");
        Collection<? extends CallableMemberDescriptor> collection = overriddenDescriptors;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(collection, 10));
        for (CallableMemberDescriptor it : collection) {
            Intrinsics.checkNotNullExpressionValue(it, "it");
            arrayList.add(function1.invoke(it));
        }
        return new SignatureParts(annotated, invoke, arrayList, z, ContextKt.copyWithNewDefaultTypeQualifiers(lazyJavaResolverContext, function1.invoke(callableMemberDescriptor).getAnnotations()), annotationQualifierApplicabilityType, false, false, 192, null);
    }
}
