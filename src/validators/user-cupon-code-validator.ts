import {
  ValidationArguments,
  ValidatorConstraint,
  ValidatorConstraintInterface,
  registerDecorator,
} from 'class-validator';

@ValidatorConstraint({ name: 'isValidUserCuponCode', async: false })
export class isValidUserCuponCodeConstraint
  implements ValidatorConstraintInterface
{
  validate(value: any, args: ValidationArguments) {
    const userCuponCodeRegex = /^.+:.+$/; // {cupon-code}:{user-id}

    // El empleado del establecimiento tendra una app movil donde podra escanear este QR y verificara lo siguiente:
    // 1. si existe un Cupon en su tienda con ese codigo.
    // 2. si aun no ha expirado.
    // 3. si el usuario con el id dado tiene ese cupon.
    // 4. si el usuario aun no ha usado el cupon.

    // Allow an empty string
    if (value === '') {
      return true;
    }

    return typeof value === 'string' && userCuponCodeRegex.test(value);
  }

  defaultMessage(args: ValidationArguments) {
    return `The time format in ${args.property} must be in the format 'HH:mm - HH:mm' or an empty string`;
  }
}

export function isValidUserCuponCode(validationOptions?: { message?: string }) {
  return function (object: Record<string, any>, propertyName: string) {
    registerDecorator({
      target: object.constructor,
      propertyName: propertyName,
      options: validationOptions,
      constraints: [],
      validator: isValidUserCuponCodeConstraint,
    });
  };
}
