import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stargazer/features/setting/domain/usecases/setting_usecase.dart';

part 'setting_event.dart';
part 'setting_state.dart';
part 'setting_bloc.freezed.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc() : super(const SettingState()) {
    on<_ThemeChanged>((event, emit) async {
      await SettingUseCase.saveTheme(event.index);
      emit(state.copyWith(theme: event.index));
      print('theme from state : ${state.theme}');
    });

    on<_LanguageChanged>((event, emit) async {
      await SettingUseCase.saveLanguage(event.index);
      emit(state.copyWith(language: event.index));
      print('language from state : ${state.language}');
    });
    on<_Initialized>((event, emit) async {
      final theme = await SettingUseCase.getTheme();
      final language = await SettingUseCase.getLanguage();
      emit(state.copyWith(theme: theme, language: language, initialization: 1 ));
    });
  }
}
